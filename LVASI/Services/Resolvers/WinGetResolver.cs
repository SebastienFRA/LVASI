using System.Net.Http;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public class WinGetResolver : IUrlResolver
{
    public Task<string?> ResolveAsync(SoftwareItem item, HttpClient http)
    {
        return Task.FromResult<string?>(null);
    }
}
