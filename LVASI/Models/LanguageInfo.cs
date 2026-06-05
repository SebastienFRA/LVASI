using System.IO;

namespace LVASI.Models;

public class LanguageInfo
{
    public string Code { get; set; } = "";
    public string DisplayName { get; set; } = "";
    private string _flagRelativePath = "";

    public string FlagRelativePath
    {
        get => _flagRelativePath;
        set
        {
            _flagRelativePath = value;
            var resolved = LVASI.Services.EmbeddedResourceLoader.GetResourcePath(value);
            FlagPath = !string.IsNullOrEmpty(resolved) ? new Uri(resolved, UriKind.Absolute).ToString() : "";
        }
    }

    public string FlagPath { get; private set; } = "";
}
