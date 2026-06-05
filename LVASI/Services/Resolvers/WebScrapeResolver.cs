using System.IO;
using System.Net.Http;
using System.Text.RegularExpressions;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public class WebScrapeResolver : IUrlResolver
{
    public async Task<string?> ResolveAsync(SoftwareItem item, HttpClient http)
    {
        var pageUrl = item.UrlValue;
        if (string.IsNullOrWhiteSpace(pageUrl))
            return null;

        var html = await http.GetStringAsync(pageUrl);

        var includePattern = item.UrlIncludePattern ?? "*" + Path.GetExtension(item.InstallerFileName);
        var includeRegex = WildcardToRegex(includePattern);
        var excludeRegexes = item.UrlExcludePatterns?
            .Select(WildcardToRegex).ToList() ?? [];

        if (!string.IsNullOrEmpty(item.UrlTextPattern))
        {
            var textRegex = WildcardToRegex(item.UrlTextPattern);
            var linkMatches = Regex.Matches(html, @"<a[^>]*href=[""']?([^""'\s>]+)[""']?[^>]*>(.*?)</a>", RegexOptions.IgnoreCase | RegexOptions.Singleline);
            foreach (Match match in linkMatches)
            {
                var link = match.Groups[1].Value;
                var text = System.Net.WebUtility.HtmlDecode(match.Groups[2].Value).Trim();
                if (!Regex.IsMatch(text, textRegex, RegexOptions.IgnoreCase))
                    continue;
                if (excludeRegexes.Any(ex => Regex.IsMatch(link, ex, RegexOptions.IgnoreCase)))
                    continue;
                return MakeAbsolute(link, pageUrl);
            }
            return null;
        }

        var matches = Regex.Matches(html, @"href=[""']?([^""'\s>]+)[""']?", RegexOptions.IgnoreCase);

        foreach (Match match in matches)
        {
            var link = match.Groups[1].Value;
            if (!Regex.IsMatch(link, includeRegex, RegexOptions.IgnoreCase))
                continue;
            if (excludeRegexes.Any(ex => Regex.IsMatch(link, ex, RegexOptions.IgnoreCase)))
                continue;

            return MakeAbsolute(link, pageUrl);
        }

        return null;
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

    private static string WildcardToRegex(string pattern)
    {
        return "^" + Regex.Escape(pattern).Replace("\\*", ".*").Replace("\\?", ".") + "$";
    }
}
