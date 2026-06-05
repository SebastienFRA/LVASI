using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Text.Json.Serialization;

namespace LVASI.Models;

public class SoftwareItem : INotifyPropertyChanged
{
    public static Func<string, string>? GetLocalizedDescription { get; set; }

    public string Id { get; set; } = "";
    public string Name { get; set; } = "";
    public string Category { get; set; } = "";
    public string UrlType { get; set; } = "static";
    public string UrlValue { get; set; } = "";
    public string InstallerFileName { get; set; } = "";
    public string InstallArgs { get; set; } = "";
    public bool IsStore { get; set; }
    public bool IsPortable { get; set; }
    public bool IsEssential { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? UrlIncludePattern { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string[]? UrlExcludePatterns { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
    public int UrlFallbackIndex { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? UserAgent { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? Referer { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public List<UrlStep>? UrlSteps { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? UrlVersionPattern { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? UrlTemplate { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? UrlTextPattern { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
    public bool RequiresExtraction { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
    public bool AllowPrerelease { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? ExtractTarget { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
    public bool RunAsUser { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? ExclusiveGroup { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? ExpectedPublisher { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public long? ExpectedSize { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? ExpectedHash { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string[]? ExpectedCertificateThumbprints { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
    public bool Disabled { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
    public bool Hidden { get; set; }

    [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
    public string? Description { get; set; }

    [JsonIgnore]
    public string LocalizedDescription => GetLocalizedDescription?.Invoke(Id) ?? (Description ?? "");

    public bool CanInstall => !IsPortable && !Disabled;
    public bool CanDownload => !IsStore && UrlType != "winget" && !Disabled;
    public bool CanSelect => !Disabled;
    public string? DisabledReason => Disabled ? "Temporairement indisponible — correctif en cours" : null;

    public string Initials => Name.Length > 0
        ? string.Concat(Name.Split(' ', '-', '_').Where(w => w.Length > 0).Select(w => w[0])).ToUpperInvariant()
        : "?";

    [JsonIgnore]
    public string? LogoUrl
    {
        get
        {
            var exts = new[] { ".png", ".ico", ".jpg", ".jpeg", ".bmp" };
            foreach (var ext in exts)
            {
                var path = LVASI.Services.EmbeddedResourceLoader.GetResourcePath($"Logos/{Id}{ext}");
                if (!string.IsNullOrEmpty(path))
                    return new Uri(path, UriKind.Absolute).ToString();
            }
            return null;
        }
    }

    public string? ToolTipContent
    {
        get
        {
            if (Disabled)
                return "Temporairement indisponible — correctif en cours.\nTemporarily unavailable — fix in progress.";
            if (IsPortable)
                return "Logiciel sans installation, ne peut être que téléchargé.\nSoftware without installation, can only be downloaded.";
            if (IsStore)
                return "Application du Store.\nNe peut être qu'installé en 'Mode En ligne'\nStore app. Can only be installed in 'Online Mode'.";
            return null;
        }
    }

    public string? CapabilityIcon => IsPortable ? "⬇️" : IsStore ? "🏪" : null;

    private bool _isSelected;
    public bool IsSelected
    {
        get => _isSelected;
        set
        {
            if (_isSelected != value)
            {
                _isSelected = value;
                OnPropertyChanged();
            }
        }
    }

    public string InstallerPath => $".\\LVASI - Téléchargements\\{InstallerFileName}";

    public event PropertyChangedEventHandler? PropertyChanged;
    public void OnPropertyChanged([CallerMemberName] string? name = null)
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
}

public class UrlStep
{
    public string Url { get; set; } = "";
    public string? UrlTemplate { get; set; }
    public string WhereAttr { get; set; } = "href";
    public string WherePattern { get; set; } = "";
    public string? ExcludePattern { get; set; }
    public bool First { get; set; }
    public string? VersionPattern { get; set; }
    public bool SelectLast { get; set; }
    public bool VersionSort { get; set; }
    public bool StableOnly { get; set; }
    public string? RemoveLinkSuffix { get; set; }
    public string? LinkExtractAfter { get; set; }
}
