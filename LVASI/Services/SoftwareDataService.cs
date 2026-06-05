using System.IO;
using System.Text.Json;
using LVASI.Models;

namespace LVASI.Services;

public class SoftwareDataService : ISoftwareDataService
{
    public List<SoftwareCategory> LoadCategories()
    {
        var json = EmbeddedResourceLoader.ReadResourceString("Data/software.json");
        if (string.IsNullOrEmpty(json))
            return GenerateDefaultData();

        var items = JsonSerializer.Deserialize<List<SoftwareItem>>(json);
        if (items == null) return GenerateDefaultData();

        var catMap = new Dictionary<string, (string Name, string Icon)>
        {
            ["Compression"] = ("Compression", "\U0001F4E6"),
            ["Documents"] = ("Documents", "\U0001F4C4"),
            ["Education"] = ("Éducation", "\U0001F52C"),
            ["Games"] = ("Jeux", "\U0001F3AE"),
            ["Pictures"] = ("Images", "\U0001F5BC"),
            ["Messaging"] = ("Messageries", "\u2709\uFE0F"),
            ["Audio"] = ("Audio", "\U0001F3B5"),
            ["Video"] = ("Vidéo", "\U0001F3AC"),
            ["3D / Creation"] = ("3D / Création", "\U0001F4D0"),
            ["Web browsers"] = ("Navigateurs", "\U0001F30E"),
            ["Dev"] = ("Dev", "\U0001F4BB"),
            ["Safety / Health"] = ("Sécurité / Santé", "\U0001F691"),
            ["Downloads"] = ("Téléchargements", "\U0001F4E5"),
            ["Cloud"] = ("Cloud", "\u2601\uFE0F"),
            ["Tools"] = ("Outils", "\U0001F6E0\uFE0F"),
            ["Tweaks"] = ("Améliorations", "\u2728")
        };

        var categoryOrder = new List<string>
        {
            "Compression", "Documents", "Education", "Games", "Pictures",
            "Messaging", "Audio", "Video", "3D / Creation",
            "Web browsers", "Dev", "Safety / Health",
            "Downloads", "Cloud", "Tools", "Tweaks"
        };

        var categoryToFileMap = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase)
        {
            ["Compression"] = "compression.png",
            ["Documents"] = "Documents.png",
            ["Éducation"] = "Éducation.png",
            ["Jeux"] = "Jeux.png",
            ["Images"] = "Images.png",
            ["Messageries"] = "Messageries.png",
            ["Audio"] = "Audio.png",
            ["Vidéo"] = "Vidéo.png",
            ["3D / Création"] = "3D___Création.png",
            ["Navigateurs"] = "Navigateurs.png",
            ["Dev"] = "Dev.png",
            ["Sécurité / Santé"] = "Sécurité___Santé.png",
            ["Téléchargements"] = "Téléchargements.png",
            ["Cloud"] = "Cloud.png",
            ["Outils"] = "Outils.png",
            ["Améliorations"] = "Améliorations.png"
        };

        var iconFiles = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        foreach (var (catName, fileName) in categoryToFileMap)
        {
            var key = NormalizeForMatch(catName);
            var path = EmbeddedResourceLoader.GetResourcePath($"CategoryIcons/{fileName}");
            if (!string.IsNullOrEmpty(path))
                iconFiles[key] = path;
        }

        var categories = items
            .Where(i => !i.Hidden)
            .GroupBy(i => i.Category)
            .OrderBy(g => { var idx = categoryOrder.IndexOf(g.Key); return idx < 0 ? 999 : idx; })
            .Select(g =>
            {
                var (name, icon) = catMap.GetValueOrDefault(g.Key, (g.Key, "\U0001F4E6"));
                var cat = new SoftwareCategory
                {
                    EnglishNameOverride = g.Key,
                    Name = name,
                    Icon = icon,
                    Items = new System.Collections.ObjectModel.ObservableCollection<SoftwareItem>(g.ToList())
                };
                var key = NormalizeForMatch(name);
                if (iconFiles.TryGetValue(key, out var iconPath))
                    cat.IconPath = iconPath;
                return cat;
            })
            .ToList();

        return categories;
    }

    private static List<SoftwareCategory> GenerateDefaultData()
    {
        var cat = new SoftwareCategory
        {
            Name = "Compression",
            Icon = "\U0001F4E6",
            Items = new System.Collections.ObjectModel.ObservableCollection<SoftwareItem>
            {
                new() { Id = "7zip", Name = "7-Zip", UrlType = "webscrape", UrlValue = "https://www.7-zip.fr/", InstallerFileName = "7zip.exe", InstallArgs = "/S", Category = "Compression", IsEssential = true }
            }
        };
        return new List<SoftwareCategory> { cat };
    }

    private static string NormalizeForMatch(string name)
    {
        var sb = new System.Text.StringBuilder(name.Length);
        foreach (var c in name)
        {
            if (char.IsLetterOrDigit(c) || c == '.' || c == '-')
                sb.Append(c);
        }
        return sb.ToString();
    }
}
