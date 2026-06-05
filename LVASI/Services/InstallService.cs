using System.Diagnostics;
using System.IO;
using System.IO.Compression;
using LVASI.Models;

namespace LVASI.Services;

public class InstallService : IInstallService
{
    public async Task<bool> InstallAsync(SoftwareItem item, string installerPath, CancellationToken ct = default, bool deleteAfterInstall = false)
    {
        try
        {
            if (item.IsStore)
                return await InstallStoreApp(item, ct);

            if (item.UrlType == "winget" && !string.IsNullOrEmpty(item.UrlValue))
                return await InstallWingetPackage(item, ct);

            if (item.IsPortable || string.IsNullOrEmpty(installerPath) || !File.Exists(installerPath))
                return false;

            if (installerPath.EndsWith(".msixbundle", StringComparison.OrdinalIgnoreCase) ||
                installerPath.EndsWith(".msix", StringComparison.OrdinalIgnoreCase))
            {
                var result = await InstallMsixBundle(installerPath, ct);
                if (result && deleteAfterInstall)
                {
                    try { File.Delete(installerPath); } catch { }
                }
                return result;
            }

            bool success;
            if (!item.RequiresExtraction)
                success = await RunInstaller(installerPath, item.InstallArgs, item.RunAsUser, ct);
            else
                success = await RunInstallerWithExtraction(item, installerPath, ct);

            if (success && deleteAfterInstall)
            {
                try { File.Delete(installerPath); } catch { }
            }

            return success;
        }
        catch (OperationCanceledException)
        {
            return false;
        }
        catch
        {
            return false;
        }
    }

    private static async Task<bool> RunInstallerWithExtraction(SoftwareItem item, string installerPath, CancellationToken ct)
    {
        string? extractDir = null;
        try
        {
            extractDir = Path.Combine(Path.GetTempPath(), "LVASI", item.Id);
            Directory.CreateDirectory(extractDir);

            if (installerPath.EndsWith(".zip", StringComparison.OrdinalIgnoreCase))
            {
                ZipFile.ExtractToDirectory(installerPath, extractDir, overwriteFiles: true);
            }
            else
            {
                var sevenZip = FindSevenZip();
                if (sevenZip == null)
                    return false;
                var psi = new ProcessStartInfo
                {
                    FileName = sevenZip,
                    Arguments = $"x \"{installerPath}\" -o\"{extractDir}\" -y",
                    UseShellExecute = false,
                    CreateNoWindow = true
                };
                using var proc = Process.Start(psi);
                if (proc == null) return false;
                await proc.WaitForExitAsync(ct);
                if (proc.ExitCode != 0) return false;
            }

            var target = Path.Combine(extractDir, item.ExtractTarget ?? "");
            if (!File.Exists(target))
                return false;

            return await RunInstaller(target, item.InstallArgs, item.RunAsUser, ct);
        }
        finally
        {
            if (extractDir != null && Directory.Exists(extractDir))
            {
                try { Directory.Delete(extractDir, recursive: true); } catch { }
            }
        }
    }

    private static async Task<bool> RunInstaller(string filePath, string args, bool runAsUser, CancellationToken ct = default)
    {
        var psi = new ProcessStartInfo
        {
            FileName = filePath,
            Arguments = args,
            UseShellExecute = true
        };

        if (!runAsUser)
            psi.Verb = "runas";

        using var process = Process.Start(psi);
        if (process == null) return false;
        await process.WaitForExitAsync(ct);
        return process.ExitCode == 0;
    }

    private static async Task<bool> InstallMsixBundle(string bundlePath, CancellationToken ct = default)
    {
        var psi = new ProcessStartInfo
        {
            FileName = "powershell.exe",
            Arguments = $"-NoProfile -ExecutionPolicy Bypass -Command \"Add-AppxPackage -Path \\\"{bundlePath}\\\" -ForceApplicationShutdown\"",
            UseShellExecute = false,
            CreateNoWindow = true,
            RedirectStandardOutput = true,
            RedirectStandardError = true
        };

        using var process = Process.Start(psi);
        if (process == null) return false;
        await process.WaitForExitAsync(ct);

        var exitCode = process.ExitCode;
        var stdErr = await process.StandardError.ReadToEndAsync();

        System.Diagnostics.Debug.WriteLine($"MSIX install exitCode={exitCode} stderr={stdErr}");
        return exitCode == 0;
    }

    private static string? FindSevenZip()
    {
        var candidates = new[]
        {
            Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles), "7-Zip", "7z.exe"),
            Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFilesX86), "7-Zip", "7z.exe"),
            "7z.exe"
        };
        return candidates.FirstOrDefault(File.Exists);
    }

    private static async Task<bool> InstallWingetPackage(SoftwareItem item, CancellationToken ct = default)
    {
        var psi = new ProcessStartInfo
        {
            FileName = "winget",
            Arguments = $"install -q \"{item.UrlValue}\" --source winget --accept-package-agreements --accept-source-agreements",
            UseShellExecute = false,
            CreateNoWindow = true,
            RedirectStandardOutput = true,
            RedirectStandardError = true
        };

        using var process = Process.Start(psi);
        if (process == null) return false;
        await process.WaitForExitAsync(ct);

        var exitCode = process.ExitCode;
        var stdOut = await process.StandardOutput.ReadToEndAsync();
        var stdErr = await process.StandardError.ReadToEndAsync();

        System.Diagnostics.Debug.WriteLine($"Winget install '{item.Id}' exitCode={exitCode}");
        System.Diagnostics.Debug.WriteLine($"  stdout: {stdOut}");
        System.Diagnostics.Debug.WriteLine($"  stderr: {stdErr}");

        if (exitCode == 0) return true;

        int[] successCodes = { 0, -1978335189, -1978335183 };
        if (successCodes.Contains(exitCode))
        {
            System.Diagnostics.Debug.WriteLine($"Winget install '{item.Id}' considered success (code {exitCode})");
            return true;
        }

        return false;
    }

    private static async Task<bool> InstallStoreApp(SoftwareItem item, CancellationToken ct = default)
    {
        var psi = new ProcessStartInfo
        {
            FileName = "winget",
            Arguments = $"install -q \"{item.UrlValue}\" --source msstore --accept-package-agreements --accept-source-agreements",
            UseShellExecute = false,
            RedirectStandardOutput = true,
            RedirectStandardError = true
        };

        using var process = Process.Start(psi);
        if (process == null) return false;
        await process.WaitForExitAsync(ct);

        var exitCode = process.ExitCode;
        var stdOut = await process.StandardOutput.ReadToEndAsync();
        var stdErr = await process.StandardError.ReadToEndAsync();

        System.Diagnostics.Debug.WriteLine($"Store install '{item.Id}' exitCode={exitCode}");
        System.Diagnostics.Debug.WriteLine($"  stdout: {stdOut}");
        System.Diagnostics.Debug.WriteLine($"  stderr: {stdErr}");

        if (exitCode == 0) return true;

        int[] successCodes = { 0, -1978335189, -1978335183 };
        if (successCodes.Contains(exitCode))
        {
            System.Diagnostics.Debug.WriteLine($"Store install '{item.Id}' considered success (code {exitCode})");
            return true;
        }

        if (stdOut.Contains("0x803F8001") || stdErr.Contains("0x803F8001"))
        {
            System.Diagnostics.Debug.WriteLine($"Store install '{item.Id}' failed: Microsoft Store error 0x803F8001 (not signed in or Store blocked)");
            File.AppendAllText("download_errors.log",
                $"{DateTime.Now:yyyy-MM-dd HH:mm:ss} | {item.Id} | Store install failed: Microsoft Store error 0x803F8001. Sign in to Microsoft Store or check Store settings.\n");
        }

        return false;
    }
}
