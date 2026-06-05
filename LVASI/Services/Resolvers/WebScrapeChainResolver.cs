using System.IO;
using System.Net.Http;
using System.Text.RegularExpressions;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public class WebScrapeChainResolver : IUrlResolver
{
    public async Task<string?> ResolveAsync(SoftwareItem item, HttpClient http)
    {
        if (item.UrlSteps is null || item.UrlSteps.Count == 0)
            return null;

        string? currentUrl = null;
        string? extractedVersion = null;

        for (int i = 0; i < item.UrlSteps.Count; i++)
        {
            var step = item.UrlSteps[i];
            bool hasLinkTemplate = step.UrlTemplate?.Contains("{link}") == true;
            var url = hasLinkTemplate
                ? (currentUrl ?? step.Url)
                : (!string.IsNullOrEmpty(step.UrlTemplate)
                    ? step.UrlTemplate.Replace("{prev}", currentUrl ?? "").Replace("{version}", extractedVersion ?? "")
                    : step.Url);

            if (!string.IsNullOrEmpty(step.UrlTemplate) && string.IsNullOrEmpty(step.WherePattern) && string.IsNullOrEmpty(step.VersionPattern) && !hasLinkTemplate)
            {
                currentUrl = url;
                System.Diagnostics.Debug.WriteLine($"ChainResolver step {i}: final URL from template '{currentUrl}'");
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Step {i}: final URL from template '{currentUrl}'\n");
                continue;
            }

            System.Diagnostics.Debug.WriteLine($"ChainResolver step {i}: scraping '{url}'");
            File.AppendAllText("download_errors.log",
                $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Step {i}: scraping '{url}'\n");

            var html = await http.GetStringAsync(url);

            if (!string.IsNullOrEmpty(step.VersionPattern))
            {
                var versionMatch = Regex.Match(html, step.VersionPattern);
                if (versionMatch.Success)
                {
                    extractedVersion = versionMatch.Groups[1].Value;
                    System.Diagnostics.Debug.WriteLine($"ChainResolver step {i}: extracted version='{extractedVersion}'");
                    File.AppendAllText("download_errors.log",
                        $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Step {i}: extracted version='{extractedVersion}'\n");
                }

                if (!string.IsNullOrEmpty(step.WherePattern))
                {
                    var linkTextRegex = @"<a[^>]*href=[""']?([^""'\s>]+)[""']?[^>]*>(.*?)</a>";
                    var matches = Regex.Matches(html, linkTextRegex, RegexOptions.IgnoreCase | RegexOptions.Singleline);
                    var results = new List<(string link, string text)>();

                    foreach (Match match in matches)
                    {
                        var link = match.Groups[1].Value;
                        var text = System.Net.WebUtility.HtmlDecode(match.Groups[2].Value).Trim();
                        if (!MatchPattern(text, step.WherePattern))
                            continue;
                        if (!string.IsNullOrEmpty(step.ExcludePattern) && step.ExcludePattern.Split('|').Any(p => MatchPattern(link, p.Trim())))
                            continue;
                        results.Add((link, text));
                    }

                    if (results.Count > 0)
                    {
                        var chosen = step.SelectLast ? results.Last() : results.First();
                        currentUrl = MakeAbsolute(chosen.link, url);
                        System.Diagnostics.Debug.WriteLine($"ChainResolver step {i}: matched '{chosen.text}' url='{currentUrl}'");
                        File.AppendAllText("download_errors.log",
                            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Step {i}: matched '{chosen.text}' url='{currentUrl}'\n");
                    }
                }
            }
            else
            {
                var regex = LinkRegex(step.WhereAttr);
                var matches = Regex.Matches(html, regex, RegexOptions.IgnoreCase);
                var results = new List<string>();

                foreach (Match match in matches)
                {
                    var link = match.Groups[1].Value;
                    if (!MatchPattern(link, step.WherePattern))
                        continue;
                    if (!string.IsNullOrEmpty(step.ExcludePattern) && step.ExcludePattern.Split('|').Any(p => MatchPattern(link, p.Trim())))
                        continue;
                    results.Add(link);
                }

                if (results.Count > 0)
                {
                    string chosen;
                    if (step.VersionSort)
                    {
                        var versioned = results.Select(r => (link: r, version: ParseVersion(r))).Where(v => v.version.Major > 0).ToList();
                        var sorted = versioned.OrderByDescending(v => v.version).ToList();

                        if (step.StableOnly && i + 1 < item.UrlSteps.Count)
                        {
                            var nextStep = item.UrlSteps[i + 1];
                            var stableFolder = await FindStableFolderAsync(sorted, url, nextStep, http);
                            if (stableFolder != null)
                            {
                                chosen = stableFolder;
                            }
                            else
                            {
                                chosen = sorted.First().link;
                            }
                        }
                        else
                        {
                            chosen = sorted.First().link;
                        }
                    }
                    else
                    {
                        chosen = step.SelectLast ? results.Last() : results.First();
                    }
                    currentUrl = MakeAbsolute(chosen, url);

                    if (!string.IsNullOrEmpty(step.RemoveLinkSuffix))
                    {
                        currentUrl = currentUrl.Replace(step.RemoveLinkSuffix, "");
                    }

                    if (!string.IsNullOrEmpty(step.LinkExtractAfter))
                    {
                        var idx = currentUrl.IndexOf(step.LinkExtractAfter);
                        if (idx >= 0)
                        {
                            currentUrl = currentUrl.Substring(idx + step.LinkExtractAfter.Length);
                        }
                    }

                    if (!string.IsNullOrEmpty(step.UrlTemplate) && step.UrlTemplate.Contains("{link}"))
                    {
                        currentUrl = step.UrlTemplate.Replace("{link}", currentUrl);
                    }

                    System.Diagnostics.Debug.WriteLine($"ChainResolver step {i}: matched '{chosen}' -> '{currentUrl}'");
                    File.AppendAllText("download_errors.log",
                        $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Step {i}: matched '{chosen}' -> '{currentUrl}'\n");
                }
            }
        }

        System.Diagnostics.Debug.WriteLine($"ChainResolver final: '{currentUrl}'");
        File.AppendAllText("download_errors.log",
            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Final: '{currentUrl}'\n");

        return currentUrl;
    }

    private static string LinkRegex(string attr)
    {
        return attr switch
        {
            "innerText" or "innerHTML" => @"href=[""']?([^""'\s>]+)[""']?",
            "title" => @"title=[""']([^""'\s>]+)[""'\s>]",
            "id" => @"id=[""']([^""'\s>]+)[""'\s>]",
            _ => @"href=[""']?([^""'\s>]+)[""']?"
        };
    }

    private static bool MatchPattern(string value, string wildcard)
    {
        var regex = "^" + Regex.Escape(wildcard).Replace("\\*", ".*").Replace("\\?", ".") + "$";
        return Regex.IsMatch(value, regex, RegexOptions.IgnoreCase);
    }

    private static string MakeAbsolute(string link, string baseUrl)
    {
        if (link.StartsWith("http", StringComparison.OrdinalIgnoreCase))
            return TrimFileSlash(link);
        return TrimFileSlash(new Uri(new Uri(baseUrl), link).ToString());
    }

    private static string TrimFileSlash(string url)
    {
        if (!url.EndsWith('/'))
            return url;
        var lastSegment = url.Split('/').LastOrDefault(s => s.Length > 0) ?? "";
        var ext = Path.GetExtension(lastSegment).ToLowerInvariant();
        var fileExts = new[] { ".exe", ".msi", ".zip", ".7z", ".tar", ".gz", ".xz", ".bz2", ".dmg", ".pkg", ".deb", ".rpm", ".appimage", ".msix", ".msixbundle", ".appx", ".jar", ".war", ".iso", ".img", ".pdf", ".txt", ".html", ".htm", ".css", ".js", ".json", ".xml", ".svg", ".png", ".jpg", ".jpeg", ".gif", ".bmp", ".ico", ".woff", ".woff2", ".ttf", ".eot", ".sha256", ".sha512", ".sig", ".asc", ".md5", ".pdb" };
        if (fileExts.Contains(ext))
            return url.TrimEnd('/');
        return url;
    }

    private static Version ParseVersion(string s)
    {
        var segments = s.Split('/', StringSplitOptions.RemoveEmptyEntries);
        var lastSegment = segments.LastOrDefault() ?? s.Trim('/');
        var match = Regex.Match(lastSegment, @"(\d+(?:\.\d+)*)");
        if (!match.Success) return new Version(0, 0);
        if (Version.TryParse(match.Groups[1].Value, out var v))
            return v;
        return new Version(0, 0);
    }

    private static async Task<string?> FindStableFolderAsync(
        List<(string link, Version version)> sortedFolders,
        string baseUrl,
        UrlStep nextStep,
        HttpClient http)
    {
        var preReleaseMarkers = new[] { "a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8", "a9", "b1", "b2", "b3", "b4", "b5", "rc1", "rc2", "rc3" };

        foreach (var folder in sortedFolders)
        {
            var folderUrl = MakeAbsolute(folder.link, baseUrl);
            try
            {
                var folderHtml = await http.GetStringAsync(folderUrl);
                var fileRegex = LinkRegex("href");
                var fileMatches = Regex.Matches(folderHtml, fileRegex, RegexOptions.IgnoreCase);

                foreach (Match match in fileMatches)
                {
                    var file = match.Groups[1].Value;
                    if (!string.IsNullOrEmpty(nextStep.WherePattern) && !MatchPattern(file, nextStep.WherePattern))
                        continue;
                    if (!string.IsNullOrEmpty(nextStep.ExcludePattern) && nextStep.ExcludePattern.Split('|').Any(p => MatchPattern(file, p.Trim())))
                        continue;

                    var isPreRelease = preReleaseMarkers.Any(m => file.Contains(m, StringComparison.OrdinalIgnoreCase));
                    if (!isPreRelease)
                    {
                        System.Diagnostics.Debug.WriteLine($"ChainResolver: found stable folder '{folder.link}' with file '{file}'");
                        File.AppendAllText("download_errors.log",
                            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | StableOnly: found stable folder '{folder.link}' with file '{file}'\n");
                        return folder.link;
                    }
                }
            }
            catch
            {
                continue;
            }
        }

        return null;
    }
}
