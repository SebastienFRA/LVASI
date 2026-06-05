using LVASI.Models;

namespace LVASI.Services.Resolvers;

public static class ResolverFactory
{
    public static IUrlResolver GetResolver(SoftwareItem item)
    {
        // Special cases by Id
        if (item.Id == "openoffice")
            return new OpenOfficeResolver();

        // Chain resolver for multi-step web scraping
        if (item.UrlType == "webscrape-chain" || (item.UrlSteps is { Count: > 0 }))
            return new WebScrapeChainResolver();

        return item.UrlType switch
        {
            "static" => new StaticResolver(),
            "github" => new GitHubResolver(),
            "webscrape" => new WebScrapeResolver(),
            "winget" => new WinGetResolver(),
            _ => new StaticResolver()
        };
    }
}
