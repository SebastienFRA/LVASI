using System.Net.Http;
using System.Text.Json;

namespace LVASI.Services;

public class UpdateService : IUpdateService
{
    private readonly HttpClient _http = new();
    private const string Repo = "SebastienFRA/LVASI";

    public async Task<string?> CheckForUpdateAsync(string currentVersion)
    {
        try
        {
            var url = $"https://api.github.com/repos/{Repo}/releases/latest";
            var request = new HttpRequestMessage(HttpMethod.Get, url);
            request.Headers.UserAgent.ParseAdd("LVASI");
            var response = await _http.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            using var doc = JsonDocument.Parse(json);
            var tag = doc.RootElement.GetProperty("tag_name").GetString() ?? "";
            if (tag.StartsWith("v", StringComparison.OrdinalIgnoreCase))
                tag = tag[1..];

            if (string.Compare(tag, currentVersion, StringComparison.OrdinalIgnoreCase) > 0)
                return tag;
        }
        catch { }
        return null;
    }
}
