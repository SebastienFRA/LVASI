using System.IO;
using System.Text.Json;
using LVASI.Models;

namespace LVASI.Services;

public class TranslationService : ITranslationService
{
    private readonly Dictionary<string, string> _entries = new();
    private readonly Dictionary<string, string> _descriptions = new();
    private string _currentLang = "fr";

    private static readonly Dictionary<string, string> LanguageDisplayNames = new()
    {
        ["fr"] = "Français",
        ["en"] = "English",
    };

    public string CurrentLang => _currentLang;
    public List<LanguageInfo> AvailableLanguages { get; } = new();

    public event Action? LanguageChanged;

    public TranslationService()
    {
        DiscoverLanguages();
        LoadLanguage("fr");
    }

    public string this[string key] => _entries.TryGetValue(key, out var val) ? val : key;

    public string Format(string key, params object[] args)
    {
        var template = this[key];
        return string.Format(template, args);
    }

    public string GetDescription(string softwareId)
    {
        return _descriptions.TryGetValue(softwareId, out var val) ? val : "";
    }

    public void SetLanguage(string langCode)
    {
        if (langCode == _currentLang) return;
        LoadLanguage(langCode);
        LanguageChanged?.Invoke();
    }

    private void DiscoverLanguages()
    {
        var codes = new[] { "fr", "en" };
        foreach (var code in codes)
        {
            var langPath = EmbeddedResourceLoader.GetResourcePath($"Lang/{code}.json");
            if (string.IsNullOrEmpty(langPath)) continue;
            var displayName = LanguageDisplayNames.TryGetValue(code, out var name) ? name : code.ToUpperInvariant();
            var flagPath = $"Flags/{code}.png";
            if (!AvailableLanguages.Any(l => l.Code == code))
                AvailableLanguages.Add(new LanguageInfo { Code = code, DisplayName = displayName, FlagRelativePath = flagPath });
        }
    }

    private void LoadLanguage(string langCode)
    {
        _entries.Clear();
        _descriptions.Clear();
        var json = EmbeddedResourceLoader.ReadResourceString($"Lang/{langCode}.json");
        if (string.IsNullOrEmpty(json))
        {
            _currentLang = "fr";
            json = EmbeddedResourceLoader.ReadResourceString("Lang/fr.json");
            if (string.IsNullOrEmpty(json)) return;
        }

        var dict = JsonSerializer.Deserialize<Dictionary<string, string>>(json);
        if (dict != null)
        {
            _currentLang = langCode;
            foreach (var kv in dict)
                _entries[kv.Key] = kv.Value;
        }

        var descJson = EmbeddedResourceLoader.ReadResourceString($"Lang/{langCode}-desc.json");
        if (!string.IsNullOrEmpty(descJson))
        {
            var descDict = JsonSerializer.Deserialize<Dictionary<string, string>>(descJson);
            if (descDict != null)
            {
                foreach (var kv in descDict)
                    _descriptions[kv.Key] = kv.Value;
            }
        }
    }
}
