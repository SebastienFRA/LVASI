using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;
using LVASI.Models;
using LVASI.Services;

namespace LVASI.ViewModels;

public class MainViewModel : INotifyPropertyChanged
{
    private readonly ISoftwareDataService _dataService;
    private readonly IDownloadService _downloadService;
    private readonly IInstallService _installService;
    private readonly IUpdateService _updateService;
    private readonly ILogService _logService;
    private readonly ITranslationService _translationService;

    public LanguageWrapper L { get; }

    public ObservableCollection<LanguageInfo> Languages { get; } = new();
    private LanguageInfo? _selectedLanguage;
    public LanguageInfo? SelectedLanguage
    {
        get => _selectedLanguage;
        set
        {
            if (_selectedLanguage != value)
            {
                _selectedLanguage = value;
                if (value != null)
                    _translationService.SetLanguage(value.Code);
                OnPropertyChanged();
            }
        }
    }

    private string? _latestVersion;
    private CancellationTokenSource? _cts;
    private string _downloadSpeed = "";
    private string _downloadSizeText = "";

    public string? LatestVersion
    {
        get => _latestVersion;
        set
        {
            _latestVersion = value;
            OnPropertyChanged();
            OnPropertyChanged(nameof(UpdateAvailableText));
        }
    }

    public string DownloadSpeed
    {
        get => _downloadSpeed;
        set { _downloadSpeed = value; OnPropertyChanged(); }
    }

    public string DownloadSizeText
    {
        get => _downloadSizeText;
        set { _downloadSizeText = value; OnPropertyChanged(); }
    }

    public string UpdateAvailableText => LatestVersion != null
        ? _translationService.Format("UpdateAvailable", LatestVersion)
        : "";

    private List<SoftwareItem> _offlineAvailableItems = new();
    private bool _isUpdatingExclusive;
    private int _selectedCount;
    private int _totalSoftwareCount;
    private string _action = "";
    private double _progressValue;
    private double _progressMax;
    private bool _isProgressIndeterminate;
    private bool _hiddenMode;
    private bool _isTileView = true;
    private bool _isOperationRunning;
    private int _offlineFileCount;
    private bool _isOfflineInstallEnabled;

    public ObservableCollection<SoftwareCategory> Categories { get; } = new();
    public ObservableCollection<OperationStatus> OperationItems { get; } = new();

    public ICommand InstallCommand { get; }
    public ICommand DownloadCommand { get; }
    public ICommand OfflineInstallCommand { get; }
    public ICommand CheckOfflineCommand { get; }
    public ICommand SelectEssentialsCommand { get; }
    public ICommand DeselectAllCommand { get; }
    public ICommand ToggleItemSelectionCommand { get; }
    public ICommand ShowSelectionCommand { get; }
    public ICommand ShowSoftwareInfoCommand { get; }
    public ICommand OpenLogCommand { get; }
    public ICommand OpenDownloadFolderCommand { get; }

    public MainViewModel(
        ISoftwareDataService dataService,
        IDownloadService downloadService,
        IInstallService installService,
        IUpdateService updateService,
        ILogService logService,
        ITranslationService translationService)
    {
        _dataService = dataService;
        _downloadService = downloadService;
        _installService = installService;
        _updateService = updateService;
        _logService = logService;
        _translationService = translationService;

        L = new LanguageWrapper(translationService);

        foreach (var lang in translationService.AvailableLanguages)
            Languages.Add(lang);

        SelectedLanguage = Languages.FirstOrDefault(l => l.Code == "fr");

        translationService.LanguageChanged += () =>
        {
            OnPropertyChanged(nameof(UpdateAvailableText));
            UpdateCategoryNames();
            foreach (var cat in Categories)
                foreach (var item in cat.Items)
                    item.OnPropertyChanged(nameof(item.LocalizedDescription));
        };

        InstallCommand = new AsyncRelayCommand(async _ => await ExecuteInstall());
        DownloadCommand = new AsyncRelayCommand(async _ => await ExecuteDownload());
        OfflineInstallCommand = new AsyncRelayCommand(async _ => await ExecuteOfflineInstall());
        CheckOfflineCommand = new RelayCommand(_ => ExecuteCheckOffline());
        SelectEssentialsCommand = new RelayCommand(_ => ExecuteSelectEssentials());
        DeselectAllCommand = new RelayCommand(_ => ExecuteDeselectAll());
        ToggleItemSelectionCommand = new RelayCommand(param =>
        {
            if (param is SoftwareItem item)
                ToggleItemSelection(item);
        });
        ShowSelectionCommand = new RelayCommand(_ => ExecuteShowSelection());
        ShowSoftwareInfoCommand = new RelayCommand(param =>
        {
            if (param is SoftwareItem si)
            {
                var desc = si.LocalizedDescription;
                if (string.IsNullOrEmpty(desc))
                    desc = L["NoDescription"];
                var info = new InfoWindow(si.Name, desc);
                info.ShowDialog();
            }
        });
        OpenLogCommand = new RelayCommand(_ => ExecuteOpenLog());
        OpenDownloadFolderCommand = new RelayCommand(_ => ExecuteOpenDownloadFolder());
        StopCommand = new RelayCommand(_ => ExecuteStop());

        LoadData();
        SoftwareItem.GetLocalizedDescription = _translationService.GetDescription;
        UpdateCategoryNames();
        _logService.MarkCheckpoint();
        _ = CheckForUpdatesAsync();
    }

    public string Version => "2.52";

    public int SelectedCount
    {
        get => _selectedCount;
        set
        {
            _selectedCount = value;
            OnPropertyChanged();
            OnPropertyChanged(nameof(SelectedCountText));
            OnPropertyChanged(nameof(IsInstallEnabled));
            OnPropertyChanged(nameof(IsDownloadEnabled));
        }
    }

    public int TotalSoftwareCount
    {
        get => _totalSoftwareCount;
        set { _totalSoftwareCount = value; OnPropertyChanged(); }
    }

    public string Action
    {
        get => _action;
        set { _action = value; OnPropertyChanged(); }
    }

    public double ProgressValue
    {
        get => _progressValue;
        set { _progressValue = value; OnPropertyChanged(); OnPropertyChanged(nameof(ProgressCounter)); }
    }

    public double ProgressMax
    {
        get => _progressMax;
        set { _progressMax = value; OnPropertyChanged(); OnPropertyChanged(nameof(ProgressCounter)); }
    }

    public bool IsProgressIndeterminate
    {
        get => _isProgressIndeterminate;
        set { _isProgressIndeterminate = value; OnPropertyChanged(); }
    }

    private int _currentItemIndex;
    private int _totalItems;

    public string ProgressCounter => _totalItems > 0 ? $"{_currentItemIndex} / {_totalItems}" : "";

    public bool HiddenMode
    {
        get => _hiddenMode;
        set { _hiddenMode = value; OnPropertyChanged(); }
    }

    public bool IsTileView
    {
        get => _isTileView;
        set { _isTileView = value; OnPropertyChanged(); }
    }

    public ICommand StopCommand { get; }

    public bool CanStop => _cts != null && IsOperationRunning;

    public bool IsOperationRunning
    {
        get => _isOperationRunning;
        set { _isOperationRunning = value; OnPropertyChanged(); OnPropertyChanged(nameof(CanStop)); }
    }

    public int OfflineFileCount
    {
        get => _offlineFileCount;
        set { _offlineFileCount = value; OnPropertyChanged(); }
    }

    public bool IsOfflineInstallEnabled
    {
        get => _isOfflineInstallEnabled;
        set
        {
            _isOfflineInstallEnabled = value;
            OnPropertyChanged();
            OnPropertyChanged(nameof(OfflineFileCount));
        }
    }

    public bool IsInstallEnabled => GetSelectedItems().Any(i => i.CanInstall);
    public bool IsDownloadEnabled => GetSelectedItems().Any(i => i.CanDownload);

    public string SelectedCountText => SelectedCount.ToString();

    private static readonly Dictionary<string, string> CategoryLangKeys = new()
    {
        ["3D / Creation"] = "Cat3D",
        ["Audio"] = "CatAudio",
        ["Cloud"] = "CatCloud",
        ["Compression"] = "CatCompression",
        ["Dev"] = "CatDev",
        ["Documents"] = "CatDocuments",
        ["Downloads"] = "CatDownloads",
        ["Education"] = "CatEducation",
        ["Games"] = "CatGames",
        ["Messaging"] = "CatMessaging",
        ["Pictures"] = "CatPictures",
        ["Safety / Health"] = "CatSafety",
        ["Tools"] = "CatTools",
        ["Tweaks"] = "CatTweaks",
        ["Video"] = "CatVideo",
        ["Web browsers"] = "CatWeb",
    };

    public string? CategoryDisplayName(string englishName)
    {
        var key = CategoryLangKeys.GetValueOrDefault(englishName);
        return key != null ? _translationService[key] : englishName;
    }

    private void UpdateCategoryNames()
    {
        foreach (var cat in Categories)
        {
            var key = CategoryLangKeys.GetValueOrDefault(cat.EnglishName);
            if (key != null)
                cat.Name = _translationService[key];
        }
    }

    private void LoadData()
    {
        Categories.Clear();
        var cats = _dataService.LoadCategories();
        foreach (var cat in cats)
        {
            foreach (var item in cat.Items)
                item.PropertyChanged += OnItemPropertyChanged;
            Categories.Add(cat);
        }
        TotalSoftwareCount = Categories.Sum(c => c.Items.Count);
        UpdateSelectedCount();
    }

    private void OnItemPropertyChanged(object? sender, PropertyChangedEventArgs e)
    {
        if (sender is not SoftwareItem item) return;

        if (e.PropertyName == nameof(SoftwareItem.IsSelected))
        {
            if (!item.IsSelected || string.IsNullOrEmpty(item.ExclusiveGroup) || _isUpdatingExclusive)
            {
                UpdateSelectedCount();
                return;
            }

            _isUpdatingExclusive = true;
            foreach (var cat in Categories)
            {
                foreach (var other in cat.Items)
                {
                    if (other != item && other.ExclusiveGroup == item.ExclusiveGroup && other.IsSelected)
                        other.IsSelected = false;
                }
            }
            _isUpdatingExclusive = false;
            UpdateSelectedCount();
        }
    }

    public void ToggleItemSelection(SoftwareItem item)
    {
        if (item.Disabled) return;
        item.IsSelected = !item.IsSelected;
        UpdateSelectedCount();
    }

    private void UpdateSelectedCount()
    {
        SelectedCount = GetSelectedItems().Count;
        foreach (var cat in Categories)
            cat.HasSelection = cat.Items.Any(i => i.IsSelected);
    }

    private void ExecuteSelectEssentials()
    {
        foreach (var cat in Categories)
        {
            foreach (var item in cat.Items)
                item.IsSelected = item.IsEssential && !item.Disabled;
        }
        UpdateSelectedCount();
    }

    private void ExecuteDeselectAll()
    {
        foreach (var cat in Categories)
        {
            foreach (var item in cat.Items)
                item.IsSelected = false;
        }
        UpdateSelectedCount();
    }

    private async Task ExecuteInstall()
    {
        var selected = GetSelectedItems().Where(i => !i.IsPortable).ToList();

        if (selected.Count == 0)
        {
            MessageBox.Show(L["NoInstallable"], L["TitleInfo"], MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }

        var confirm = MessageBox.Show(
            _translationService.Format("ConfirmInstall", selected.Count),
            L["TitleConfirm"],
            MessageBoxButton.YesNo,
            MessageBoxImage.Question);

        if (confirm != MessageBoxResult.Yes) return;

        _logService.MarkCheckpoint();

        await RunWithProgress(
            _translationService.Format("StatusInstalling", "").TrimEnd(':').TrimEnd(' '),
            selected,
            async (item, progress, ct) =>
            {
                if (item.IsStore)
                {
                    Action = _translationService.Format("StatusInstalling", item.Name);
                    var success = await _installService.InstallAsync(item, "", ct);
                    _logService.Add(new OperationLog
                    {
                        Timestamp = DateTime.Now,
                        SoftwareId = item.Id,
                        SoftwareName = item.Name,
                        Operation = "Install",
                        Success = success,
                        Details = success ? _translationService.Format("StatusInstallDone", item.Name)
                                          : _translationService.Format("StatusInstallFailed", item.Name)
                    });
                    return success;
                }
                else if (item.UrlType == "winget")
                {
                    Action = _translationService.Format("StatusInstalling", item.Name);
                    var success = await _installService.InstallAsync(item, "", ct);
                    _logService.Add(new OperationLog
                    {
                        Timestamp = DateTime.Now,
                        SoftwareId = item.Id,
                        SoftwareName = item.Name,
                        Operation = "Install",
                        Success = success,
                        Details = success ? _translationService.Format("StatusInstallDone", item.Name)
                                          : _translationService.Format("StatusInstallFailed", item.Name)
                    });
                    return success;
                }
                else
                {
                    Action = _translationService.Format("StatusDownloading", item.Name);
                    var destDir = Path.Combine(Environment.CurrentDirectory, "LVASI - Téléchargements");
                    var downloaded = await _downloadService.DownloadAsync(item, destDir, progress, ct);
                    if (downloaded == null)
                    {
                        if (ct.IsCancellationRequested) return false;
                        _logService.Add(new OperationLog
                        {
                            Timestamp = DateTime.Now,
                            SoftwareId = item.Id,
                            SoftwareName = item.Name,
                            Operation = "Install",
                            Success = false,
                            ErrorMessage = _translationService.Format("StatusDownloadFailed", item.Name)
                        });
                        return false;
                    }
                    Action = _translationService.Format("StatusInstalling", item.Name);
                    var installed = await _installService.InstallAsync(item, downloaded, ct, deleteAfterInstall: true);
                    _logService.Add(new OperationLog
                    {
                        Timestamp = DateTime.Now,
                        SoftwareId = item.Id,
                        SoftwareName = item.Name,
                        Operation = "Install",
                        Success = installed,
                        Details = installed ? _translationService.Format("StatusInstallDone", item.Name)
                                            : _translationService.Format("StatusInstallFailed", item.Name)
                    });
                    return installed;
                }
            });

        var done = MessageBox.Show(L["OperationsDone"], L["TitleReport"], MessageBoxButton.YesNo, MessageBoxImage.Information);
        if (done == MessageBoxResult.Yes)
            ShowRecentLog();

        ClearOperationSummary();
        Action = L["StatusInstallComplete"];
    }

    private async Task ExecuteDownload()
    {
        var selected = GetSelectedItems().Where(i => !i.IsStore).ToList();

        if (selected.Count == 0)
        {
            MessageBox.Show(L["NoDownloadable"], L["TitleInfo"], MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }

        var confirm = MessageBox.Show(
            _translationService.Format("ConfirmDownload", selected.Count),
            L["TitleConfirm"],
            MessageBoxButton.YesNo,
            MessageBoxImage.Question);

        if (confirm != MessageBoxResult.Yes) return;

        _logService.MarkCheckpoint();

        await RunWithProgress(
            L["Download"],
            selected,
            async (item, progress, ct) =>
            {
                Action = _translationService.Format("StatusDownloading", item.Name);
                var destDir = Path.Combine(Environment.CurrentDirectory, "LVASI - Téléchargements");
                var downloaded = await _downloadService.DownloadAsync(item, destDir, progress, ct);
                var success = downloaded != null;
                _logService.Add(new OperationLog
                {
                    Timestamp = DateTime.Now,
                    SoftwareId = item.Id,
                    SoftwareName = item.Name,
                    Operation = "Download",
                    Success = success,
                    Details = success ? _translationService.Format("StatusDownloadDone", item.Name)
                                      : _translationService.Format("StatusDownloadFailed", item.Name)
                });
                return success;
            });

        var done = MessageBox.Show(L["OperationsDone"], L["TitleReport"], MessageBoxButton.YesNo, MessageBoxImage.Information);
        if (done == MessageBoxResult.Yes)
            ShowRecentLog();

        ClearOperationSummary();
        Action = L["StatusDownloadComplete"];
    }

    private async Task ExecuteOfflineInstall()
    {
        var available = _offlineAvailableItems
            .Where(i => CheckOfflineFileExists(i))
            .ToList();

        if (available.Count == 0)
        {
            var fallback = MessageBox.Show(L["OfflineFallback"], L["TitleInfo"], MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (fallback != MessageBoxResult.Yes)
            {
                ClearOperationSummary();
                return;
            }
            available = GetSelectedItems().Where(i => i.CanInstall).ToList();
        }

        _logService.MarkCheckpoint();

        await RunWithProgress(
            L["OfflineInstall"],
            available,
            async (item, progress, ct) =>
            {
                Action = _translationService.Format("StatusInstalling", item.Name);
                var installerPath = GetOfflineInstallerPath(item);
                var success = await _installService.InstallAsync(item, installerPath, ct);
                _logService.Add(new OperationLog
                {
                    Timestamp = DateTime.Now,
                    SoftwareId = item.Id,
                    SoftwareName = item.Name,
                    Operation = "OfflineInstall",
                    Success = success,
                    Details = success ? _translationService.Format("StatusInstallDone", item.Name)
                                      : _translationService.Format("StatusInstallFailed", item.Name)
                });
                return success;
            });

        var done = MessageBox.Show(L["OperationsDone"], L["TitleReport"], MessageBoxButton.YesNo, MessageBoxImage.Information);
        if (done == MessageBoxResult.Yes)
            ShowRecentLog();

        ClearOperationSummary();
        Action = L["StatusOfflineComplete"];
    }

    private bool CheckOfflineFileExists(SoftwareItem item)
    {
        var path = GetOfflineInstallerPath(item);
        if (File.Exists(path)) return true;

        if (item.RequiresExtraction)
        {
            var extractedDir = Path.Combine(
                Environment.CurrentDirectory,
                "LVASI - Téléchargements",
                Path.GetFileNameWithoutExtension(item.InstallerFileName));
            if (Directory.Exists(extractedDir)) return true;
        }

        return false;
    }

    private string GetOfflineInstallerPath(SoftwareItem item)
    {
        return Path.Combine(
            Environment.CurrentDirectory,
            "LVASI - Téléchargements",
            item.InstallerFileName);
    }

    private void ExecuteShowSelection()
    {
        var selected = GetSelectedItems();
        if (selected.Count == 0)
        {
            MessageBox.Show(L["NoSelection"], L["TitleInfo"], MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }
        var list = string.Join("\n", selected.Select(s => $"{s.Name}"));
        MessageBox.Show(
            _translationService.Format("SelectedCount", selected.Count) + "\n\n" + list,
            L["Selection"],
            MessageBoxButton.OK,
            MessageBoxImage.Information);
    }

    private void ExecuteOpenLog()
    {
        var recent = _logService.GetSummarySinceCheckpoint();
        if (string.IsNullOrEmpty(recent))
        {
            MessageBox.Show(L["NoRecentOps"], L["TitleLog"], MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }
        var msg = recent + "\n\n" + L["ReportOpenFull"];
        var result = MessageBox.Show(msg, L["TitleLog"], MessageBoxButton.YesNo, MessageBoxImage.Question);
        if (result == MessageBoxResult.Yes)
            _logService.OpenLogFile();
    }

    public void ShowRecentLog()
    {
        var recent = _logService.GetSummarySinceCheckpoint();
        if (string.IsNullOrEmpty(recent))
        {
            MessageBox.Show(L["NoRecentOps"], L["TitleReport"], MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }
        var msg = recent + "\n\n" + L["ReportOpenFull"];
        var result = MessageBox.Show(msg, L["TitleReport"], MessageBoxButton.YesNo, MessageBoxImage.Question);
        if (result == MessageBoxResult.Yes)
            _logService.OpenLogFile();
    }

    private void ExecuteOpenDownloadFolder()
    {
        var dir = Path.Combine(Environment.CurrentDirectory, "LVASI - Téléchargements");
        if (Directory.Exists(dir))
        {
            Process.Start(new ProcessStartInfo(dir) { UseShellExecute = true });
        }
        else
        {
            MessageBox.Show(L["NoDownloadFolder"], L["TitleInfo"], MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }

    private void ExecuteCheckOffline()
    {
        var dir = Path.Combine(Environment.CurrentDirectory, "LVASI - Téléchargements");
        if (!Directory.Exists(dir))
        {
            MessageBox.Show(L["FolderNotFound"], L["TitleInfo"], MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }

        var allItems = Categories.SelectMany(c => c.Items).ToList();
        _offlineAvailableItems = allItems
            .Where(i => CheckOfflineFileExists(i))
            .ToList();
        OfflineFileCount = _offlineAvailableItems.Count;

        MessageBox.Show(
            _translationService.Format("FilesFoundCount", OfflineFileCount),
            L["TitleInfo"],
            MessageBoxButton.OK,
            MessageBoxImage.Information);

        IsOfflineInstallEnabled = OfflineFileCount > 0;
    }

    private async Task CheckForUpdatesAsync()
    {
        try
        {
            var latest = await _updateService.CheckForUpdateAsync(Version);
            LatestVersion = latest;
        }
        catch
        {
        }
    }

    private List<SoftwareItem> GetSelectedItems()
    {
        return Categories.SelectMany(c => c.Items).Where(i => i.IsSelected && !i.Disabled).ToList();
    }

    private async Task RunWithProgress(
        string title,
        List<SoftwareItem> items,
        Func<SoftwareItem, IProgress<DownloadProgressState>, CancellationToken, Task<bool>> action)
    {
        _cts = new CancellationTokenSource();
        IsOperationRunning = true;
        OperationItems.Clear();

        foreach (var item in items)
            OperationItems.Add(new OperationStatus(item.Id, item.Name));

        ProgressMax = 1;
        ProgressValue = 0;
        DownloadSpeed = "";
        IsProgressIndeterminate = false;
        Action = title;
        _totalItems = items.Count;
        _currentItemIndex = 0;
        OnPropertyChanged(nameof(ProgressCounter));
        OnPropertyChanged(nameof(CanStop));

        for (int i = 0; i < items.Count; i++)
        {
            if (_cts.IsCancellationRequested)
            {
                Action = _translationService["StatusCancelled"];
                break;
            }

            var item = items[i];
            var status = OperationItems[i];
            status.State = OperationState.Processing;
            _currentItemIndex = i + 1;
            OnPropertyChanged(nameof(ProgressCounter));

            var progress = new Progress<DownloadProgressState>(p =>
            {
                ProgressValue = p.Progress;
                DownloadSpeed = p.Speed;
                if (p.TotalBytes > 0)
                {
                    var downloadedMb = p.BytesDownloaded / 1048576.0;
                    var totalMb = p.TotalBytes / 1048576.0;
                    DownloadSizeText = $"[{downloadedMb:F0} Mo / {totalMb:F0} Mo]";
                }
                else
                {
                    DownloadSizeText = "";
                }
            });

            var success = await action(item, progress, _cts.Token);

            status.State = success ? OperationState.Success : OperationState.Failed;
            ProgressValue = 1;
            DownloadSpeed = "";
        }

        _cts.Dispose();
        _cts = null;
        OnPropertyChanged(nameof(CanStop));
    }

    private void ExecuteStop()
    {
        _cts?.Cancel();
    }

    private void ClearOperationSummary()
    {
        IsOperationRunning = false;
        OperationItems.Clear();
        Action = "";
        ProgressValue = 0;
        DownloadSpeed = "";
        DownloadSizeText = "";
        _totalItems = 0;
        _currentItemIndex = 0;
        OnPropertyChanged(nameof(ProgressCounter));
        OnPropertyChanged(nameof(CanStop));
    }

    public event PropertyChangedEventHandler? PropertyChanged;

    protected void OnPropertyChanged([CallerMemberName] string? name = null)
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
}
