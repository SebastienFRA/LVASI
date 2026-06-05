using LVASI.Models;

namespace LVASI.Services;

public interface IInstallService
{
    Task<bool> InstallAsync(SoftwareItem item, string installerPath, CancellationToken ct = default, bool deleteAfterInstall = false);
}
