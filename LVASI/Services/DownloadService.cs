using System.Diagnostics;
using System.IO;
using System.Net.Http;
using LVASI.Models;
using LVASI.Services.Resolvers;

namespace LVASI.Services;

public class DownloadService : IDownloadService
{
    private readonly HttpClient _http = new() { Timeout = TimeSpan.FromMinutes(10) };

    public DownloadService()
    {
        _http.DefaultRequestHeaders.UserAgent.ParseAdd("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36");
        _http.DefaultRequestHeaders.Accept.ParseAdd("text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        _http.DefaultRequestHeaders.CacheControl = new System.Net.Http.Headers.CacheControlHeaderValue { NoCache = true, NoStore = true };
        _http.DefaultRequestHeaders.Pragma.ParseAdd("no-cache");
    }

    public async Task<string?> DownloadAsync(SoftwareItem item, string destinationDir, IProgress<DownloadProgressState>? progress = null, CancellationToken ct = default)
    {
        try
        {
            var resolver = ResolverFactory.GetResolver(item);
            var url = await resolver.ResolveAsync(item, _http);
            System.Diagnostics.Debug.WriteLine($"DownloadService: resolved URL for {item.Id} = '{url?.Substring(0, Math.Min(100, url?.Length ?? 0))}'");
            File.AppendAllText("download_errors.log",
                $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Resolved: {url?.Substring(0, Math.Min(100, url?.Length ?? 0)) ?? "null"}\n");
            if (string.IsNullOrEmpty(url))
                return null;

        Directory.CreateDirectory(destinationDir);
        var filePath = Path.Combine(destinationDir, item.InstallerFileName);
        var ua = string.IsNullOrWhiteSpace(item.UserAgent) ? "Wget" : item.UserAgent;
        var referer = item.Referer;

        System.Diagnostics.Debug.WriteLine($"DownloadService: downloading {item.Id} with UA='{ua}'");
        File.AppendAllText("download_errors.log",
            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | UA={ua} | Dest={filePath}\n");

            var result = await DownloadFromUrlAsync(url, filePath, ua, referer, progress, ct);
            if (result == DownloadResult.HtmlDetected)
            {
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | ERROR: Server returned HTML. Token expired. Retrying...\n");
                var freshResolver = ResolverFactory.GetResolver(item);
                url = await freshResolver.ResolveAsync(item, _http);
                if (string.IsNullOrEmpty(url))
                    return null;
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Fresh URL: {url.Substring(0, Math.Min(100, url.Length))}\n");
                result = await DownloadFromUrlAsync(url!, filePath, ua, referer, progress, ct);
            }

            if (result == DownloadResult.Success)
            {
                var hasVerification = item.ExpectedSize.HasValue ||
                    !string.IsNullOrEmpty(item.ExpectedHash) ||
                    !string.IsNullOrEmpty(item.ExpectedPublisher) ||
                    (item.ExpectedCertificateThumbprints != null && item.ExpectedCertificateThumbprints.Length > 0);

                if (hasVerification)
                {
                    System.Diagnostics.Debug.WriteLine($"DownloadService: running integrity checks for {item.Id}");
                    File.AppendAllText("download_errors.log",
                        $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Running integrity checks...\n");

                    var actualSize = new FileInfo(filePath).Length;

                    if (item.ExpectedSize.HasValue)
                    {
                        if (actualSize != item.ExpectedSize.Value)
                        {
                            var msg = $"Size check FAILED: expected={item.ExpectedSize.Value}, actual={actualSize}";
                            System.Diagnostics.Debug.WriteLine($"DownloadService: {msg} for {item.Id}");
                            File.AppendAllText("download_errors.log",
                                $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | {msg} — File deleted.\n");
                            try { File.Delete(filePath); } catch { }
                            return null;
                        }
                        File.AppendAllText("download_errors.log",
                            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Size check: expected={item.ExpectedSize.Value}, actual={actualSize} — OK\n");
                    }

                    if (!string.IsNullOrEmpty(item.ExpectedHash))
                    {
                        var actualHash = HashHelper.ComputeSha256(filePath);
                        if (!actualHash.Equals(item.ExpectedHash, StringComparison.OrdinalIgnoreCase))
                        {
                            var msg = $"SHA-256 check FAILED: expected={item.ExpectedHash}, actual={actualHash}";
                            System.Diagnostics.Debug.WriteLine($"DownloadService: {msg} for {item.Id}");
                            File.AppendAllText("download_errors.log",
                                $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | {msg} — File deleted.\n");
                            try { File.Delete(filePath); } catch { }
                            return null;
                        }
                        File.AppendAllText("download_errors.log",
                            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | SHA-256 check: expected={item.ExpectedHash}, actual={actualHash} — OK\n");
                    }

                    if (!string.IsNullOrEmpty(item.ExpectedPublisher) ||
                        (item.ExpectedCertificateThumbprints != null && item.ExpectedCertificateThumbprints.Length > 0))
                    {
                        var (isValid, message) = SignatureVerifier.VerifySignature(
                            filePath, item.ExpectedPublisher, item.ExpectedCertificateThumbprints);

                        if (!isValid)
                        {
                            System.Diagnostics.Debug.WriteLine($"DownloadService: Signature check FAILED for {item.Id}: {message}");
                            File.AppendAllText("download_errors.log",
                                $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Signature check FAILED: {message} — File deleted.\n");
                            try { File.Delete(filePath); } catch { }
                            return null;
                        }

                        File.AppendAllText("download_errors.log",
                            $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Signature check: {message} — OK\n");
                    }
                }
            }

            return result == DownloadResult.Success ? filePath : null;
        }
        catch (OperationCanceledException)
        {
            System.Diagnostics.Debug.WriteLine($"DownloadService: cancelled for {item.Id}");
            return null;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"DownloadService error for {item.Id}: {ex.Message}");
            System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            try
            {
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | {ex.GetType().Name}: {ex.Message}\n");
            }
            catch { }
            return null;
        }
    }

    private async Task<DownloadResult> DownloadFromUrlAsync(string url, string filePath, string ua, string? referer, IProgress<DownloadProgressState>? progress, CancellationToken ct)
    {
        using var dlHttp = new HttpClient { Timeout = TimeSpan.FromMinutes(10) };
        dlHttp.DefaultRequestHeaders.UserAgent.ParseAdd(ua);
        dlHttp.DefaultRequestHeaders.Accept.ParseAdd("text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        dlHttp.DefaultRequestHeaders.CacheControl = new System.Net.Http.Headers.CacheControlHeaderValue { NoCache = true, NoStore = true };
        if (!string.IsNullOrWhiteSpace(referer))
        {
            dlHttp.DefaultRequestHeaders.Referrer = new Uri(referer);
        }

        long totalBytes = -1;
        long bytesRead = 0;

        if (File.Exists(filePath))
        {
            var existingSize = new FileInfo(filePath).Length;
            if (existingSize > 0)
            {
                bytesRead = existingSize;
            }
        }

        int maxRetries = 3;
        for (int attempt = 0; attempt < maxRetries; attempt++)
        {
            try
            {
                using var request = new HttpRequestMessage(HttpMethod.Get, url);
                if (bytesRead > 0)
                {
                    request.Headers.Range = new System.Net.Http.Headers.RangeHeaderValue(bytesRead, null);
                }

                using var response = await dlHttp.SendAsync(request, HttpCompletionOption.ResponseHeadersRead, ct);

                if (response.StatusCode == System.Net.HttpStatusCode.RequestedRangeNotSatisfiable)
                {
                    File.Delete(filePath);
                    bytesRead = 0;
                    request.Headers.Range = null;
                    using var retryResponse = await dlHttp.SendAsync(request, HttpCompletionOption.ResponseHeadersRead, ct);
                    retryResponse.EnsureSuccessStatusCode();
                    totalBytes = retryResponse.Content.Headers.ContentLength ?? -1;
                    await using var contentStream = await retryResponse.Content.ReadAsStreamAsync(ct);
                    await using var fileStream = new FileStream(filePath, FileMode.Create, FileAccess.Write, FileShare.None, 65536, true);
                    var sw2 = Stopwatch.StartNew();
                    var buffer2 = new byte[65536];
                    int read2;
                    while ((read2 = await contentStream.ReadAsync(buffer2, ct)) > 0)
                    {
                        ct.ThrowIfCancellationRequested();
                        await fileStream.WriteAsync(buffer2, 0, read2, ct);
                        bytesRead += read2;
                        if (totalBytes > 0)
                        {
                            var elapsed = sw2.Elapsed.TotalSeconds;
                            var speedBps = elapsed > 0 ? bytesRead / elapsed : 0;
                            var speed = speedBps > 1048576 ? $"{speedBps / 1048576:F1} MB/s" : $"{speedBps / 1024:F0} KB/s";
                            progress?.Report(new DownloadProgressState((double)bytesRead / totalBytes, speed, bytesRead, totalBytes));
                        }
                    }
                    fileStream.Flush();
                    progress?.Report(new DownloadProgressState(1.0, "", totalBytes, totalBytes));
                    return DownloadResult.Success;
                }

                var contentType = response.Content.Headers.ContentType?.MediaType ?? "";
                System.Diagnostics.Debug.WriteLine($"DownloadService: status={response.StatusCode} content-type={contentType} content-length={response.Content.Headers.ContentLength}");
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | Status={response.StatusCode} | ContentType={contentType} | ContentLength={response.Content.Headers.ContentLength}\n");

                if (contentType.Contains("html", StringComparison.OrdinalIgnoreCase))
                    return DownloadResult.HtmlDetected;

                response.EnsureSuccessStatusCode();

                if (response.StatusCode == System.Net.HttpStatusCode.PartialContent)
                {
                    totalBytes = response.Content.Headers.ContentRange?.Length ?? -1;
                }
                else
                {
                    totalBytes = response.Content.Headers.ContentLength ?? -1;
                    bytesRead = 0;
                }

                await using var stream = await response.Content.ReadAsStreamAsync(ct);
                var mode = bytesRead > 0 ? FileMode.Append : FileMode.Create;
                await using var fs = new FileStream(filePath, mode, FileAccess.Write, FileShare.None, 65536, true);

                var buffer = new byte[65536];
                int read;
                var sw = Stopwatch.StartNew();
                while ((read = await stream.ReadAsync(buffer, ct)) > 0)
                {
                    ct.ThrowIfCancellationRequested();
                    await fs.WriteAsync(buffer, 0, read, ct);
                    bytesRead += read;
                    if (totalBytes > 0)
                    {
                        var elapsed = sw.Elapsed.TotalSeconds;
                        var speedBps = elapsed > 0 ? bytesRead / elapsed : 0;
                        var speed = speedBps > 1048576 ? $"{speedBps / 1048576:F1} MB/s" : $"{speedBps / 1024:F0} KB/s";
                        progress?.Report(new DownloadProgressState((double)bytesRead / totalBytes, speed, bytesRead, totalBytes));
                    }
                }

                fs.Flush();
                var finalSize = fs.Length;
                System.Diagnostics.Debug.WriteLine($"DownloadService: downloaded {bytesRead} bytes, file size={finalSize}");
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | Downloaded={bytesRead} | FileSize={finalSize} | Path={filePath}\n");

                progress?.Report(new DownloadProgressState(1.0, "", totalBytes, totalBytes));
                return DownloadResult.Success;
            }
            catch (HttpIOException ex) when (ex.Message.Contains("prematurely", StringComparison.OrdinalIgnoreCase) || ex.Message.Contains("ResponseEnded", StringComparison.OrdinalIgnoreCase))
            {
                System.Diagnostics.Debug.WriteLine($"DownloadService: connection dropped for {url}, attempt {attempt + 1}/{maxRetries}, resuming from byte {bytesRead}");
                File.AppendAllText("download_errors.log",
                    $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {url} | Connection dropped, attempt {attempt + 1}/{maxRetries}, resuming from byte {bytesRead}\n");

                if (attempt == maxRetries - 1)
                {
                    File.AppendAllText("download_errors.log",
                        $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {url} | All retry attempts exhausted\n");
                    throw;
                }

                await Task.Delay(2000 * (attempt + 1), ct);
            }
        }

        return DownloadResult.Failed;
    }

    private enum DownloadResult { Success, HtmlDetected, Failed }
}
