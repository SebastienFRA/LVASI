using LVASI.Models;

namespace LVASI.Services;

public record DownloadProgressState(double Progress, string Speed, long BytesDownloaded = -1, long TotalBytes = -1);

public interface IDownloadService
{
    Task<string?> DownloadAsync(SoftwareItem item, string destinationDir, IProgress<DownloadProgressState>? progress = null, CancellationToken ct = default);
}
