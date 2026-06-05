using System.Net.Http;
using System.Text.RegularExpressions;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public class OpenOfficeResolver : IUrlResolver
{
    public async Task<string?> ResolveAsync(SoftwareItem item, HttpClient http)
    {
        var html = await http.GetStringAsync("https://www.openoffice.org/download/index.html");

        // Find the "Released: Apache OpenOffice X.Y.Z" text
        var match = Regex.Match(html, @"Released:\s*Apache\s+OpenOffice\s+([\d.]+)");
        if (!match.Success)
            return null;

        var version = match.Groups[1].Value;
        var url = $"https://sourceforge.net/projects/openofficeorg.mirror/files/{version}/binaries/fr/Apache_OpenOffice_{version}_Win_x86_install_fr.exe/download";
        return url.Replace(" ", "");
    }
}
