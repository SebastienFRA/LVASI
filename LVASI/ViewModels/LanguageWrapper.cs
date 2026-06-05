using System.ComponentModel;
using System.Runtime.CompilerServices;
using LVASI.Services;

namespace LVASI.ViewModels;

public class LanguageWrapper : INotifyPropertyChanged
{
    private readonly ITranslationService _tr;

    public LanguageWrapper(ITranslationService tr)
    {
        _tr = tr;
        _tr.LanguageChanged += () =>
        {
            NotifyAll();
        };
    }

    public string this[string key] => _tr[key];

    public string WindowTitle => _tr["WindowTitle"];
    public string Selection => _tr["Selection"];
    public string Selected => _tr["Selected"];
    public string Online => _tr["Online"];
    public string Offline => _tr["Offline"];
    public string Options => _tr["Options"];
    public string Version => _tr["Version"];
    public string Contact => _tr["Contact"];
    public string Operations => _tr["Operations"];
    public string Install => _tr["Install"];
    public string Download => _tr["Download"];
    public string OfflineInstall => _tr["OfflineInstall"];
    public string CheckOffline => _tr["CheckOffline"];
    public string OpenDownloadFolder => _tr["OpenDownloadFolder"];
    public string SelectEssentials => _tr["SelectEssentials"];
    public string DeselectAll => _tr["DeselectAll"];
    public string ShowSelection => _tr["ShowSelection"];
    public string OpenLog => _tr["OpenLog"];
    public string LangLabel => _tr["LangLabel"];
    public string HiddenMode => _tr["HiddenMode"];
    public string FilesFound => _tr["FilesFound"];
    public string NoDescription => _tr["NoDescription"];
    public string GithubRepo => _tr["GithubRepo"];
    public string ContactEmail => _tr["ContactEmail"];
    public string NoDownloadFolder => _tr["NoDownloadFolder"];

    public string Cat3D => _tr["Cat3D"];
    public string CatAudio => _tr["CatAudio"];
    public string CatCloud => _tr["CatCloud"];
    public string CatCompression => _tr["CatCompression"];
    public string CatDev => _tr["CatDev"];
    public string CatDocuments => _tr["CatDocuments"];
    public string CatDownloads => _tr["CatDownloads"];
    public string CatEducation => _tr["CatEducation"];
    public string CatGames => _tr["CatGames"];
    public string CatMessaging => _tr["CatMessaging"];
    public string CatPictures => _tr["CatPictures"];
    public string CatSafety => _tr["CatSafety"];
    public string CatTools => _tr["CatTools"];
    public string CatTweaks => _tr["CatTweaks"];
    public string CatVideo => _tr["CatVideo"];
    public string CatWeb => _tr["CatWeb"];

    private void NotifyAll()
    {
        foreach (var prop in GetType().GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance))
            OnPropertyChanged(prop.Name);
    }

    public event PropertyChangedEventHandler? PropertyChanged;
    protected void OnPropertyChanged([CallerMemberName] string? name = null)
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
}
