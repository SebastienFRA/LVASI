using System.Net.Http;
using System.Text.Json;
using System.Text.RegularExpressions;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public class GitHubResolver : IUrlResolver
{
    public async Task<string?> ResolveAsync(SoftwareItem item, HttpClient http)
    {
        var repo = item.UrlValue;
        if (string.IsNullOrWhiteSpace(repo))
            return null;

        var url = $"https://api.github.com/repos/{repo}/releases";
        var request = new HttpRequestMessage(HttpMethod.Get, url);
        request.Headers.UserAgent.ParseAdd("LVASI/2.51");
        var token = Environment.GetEnvironmentVariable("GITHUB_TOKEN");
        if (!string.IsNullOrEmpty(token))
            request.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);
        var response = await http.SendAsync(request);
        response.EnsureSuccessStatusCode();
        var json = await response.Content.ReadAsStringAsync();
        using var doc = JsonDocument.Parse(json);

        var includePattern = item.UrlIncludePattern ?? item.InstallerFileName;
        var includeRegex = WildcardToRegex(includePattern);
        var excludeRegexes = item.UrlExcludePatterns?
            .Select(WildcardToRegex).ToList() ?? [];

        int skipped = 0;

        foreach (var release in doc.RootElement.EnumerateArray())
        {
            if (!item.AllowPrerelease && release.TryGetProperty("prerelease", out var pre) && pre.GetBoolean())
                continue;

            if (skipped < item.UrlFallbackIndex)
            {
                skipped++;
                continue;
            }

            foreach (var asset in release.GetProperty("assets").EnumerateArray())
            {
                var name = asset.GetProperty("name").GetString() ?? "";
                if (!Regex.IsMatch(name, includeRegex, RegexOptions.IgnoreCase))
                    continue;
                if (excludeRegexes.Any(ex => Regex.IsMatch(name, ex, RegexOptions.IgnoreCase)))
                    continue;
                return asset.GetProperty("browser_download_url").GetString();
            }
        }

        // Fallback: if UrlTemplate is set, use release tag to build URL (e.g. Signal CDN)
        if (!string.IsNullOrEmpty(item.UrlTemplate))
        {
            foreach (var release in doc.RootElement.EnumerateArray())
            {
                if (!item.AllowPrerelease && release.TryGetProperty("prerelease", out var pre) && pre.GetBoolean())
                    continue;

                if (release.TryGetProperty("tag_name", out var tagProp))
                {
                    var tag = tagProp.GetString() ?? "";
                    var version = tag;
                    if (!string.IsNullOrEmpty(item.UrlVersionPattern))
                        version = Regex.Match(tag, item.UrlVersionPattern) is { Success: true } m
                            ? m.Groups[1].Value
                            : tag.TrimStart('v');

                    return item.UrlTemplate
                        .Replace("{tag}", tag)
                        .Replace("{version}", version);
                }
            }
        }

        return null;
    }

    private static string WildcardToRegex(string pattern)
    {
        return "^" + Regex.Escape(pattern).Replace("\\*", ".*").Replace("\\?", ".") + "$";
    }
}
