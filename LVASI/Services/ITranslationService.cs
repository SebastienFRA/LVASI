using System.Globalization;
using LVASI.Models;

namespace LVASI.Services;

public interface ITranslationService
{
    string CurrentLang { get; }
    string this[string key] { get; }
    string Format(string key, params object[] args);
    string GetDescription(string softwareId);
    void SetLanguage(string langCode);
    event Action? LanguageChanged;
    List<LanguageInfo> AvailableLanguages { get; }
}
