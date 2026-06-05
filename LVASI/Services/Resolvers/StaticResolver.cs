using System.Net.Http;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public class StaticResolver : IUrlResolver
{
    public Task<string?> ResolveAsync(SoftwareItem item, HttpClient http)
    {
        return Task.FromResult<string?>(item.UrlValue);
    }
}
