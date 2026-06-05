using System.Net.Http;
using LVASI.Models;

namespace LVASI.Services.Resolvers;

public interface IUrlResolver
{
    Task<string?> ResolveAsync(SoftwareItem item, HttpClient http);
}
