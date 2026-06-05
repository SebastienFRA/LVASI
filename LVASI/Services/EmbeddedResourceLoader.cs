using System.IO;
using System.Reflection;

namespace LVASI.Services;

public static class EmbeddedResourceLoader
{
    private static readonly Assembly ThisAssembly = typeof(EmbeddedResourceLoader).Assembly;

    public static string? GetResourcePath(string relativePath)
    {
        var resourceName = $"LVASI.{relativePath.Replace('/', '.').Replace('\\', '.')}";
        var tempDir = Path.Combine(Path.GetTempPath(), "LVASI_Resources");
        var fullPath = Path.Combine(tempDir, relativePath);

        if (File.Exists(fullPath))
            return fullPath;

        using var stream = ThisAssembly.GetManifestResourceStream(resourceName);
        if (stream == null)
            return null;

        Directory.CreateDirectory(Path.GetDirectoryName(fullPath)!);
        using var fileStream = new FileStream(fullPath, FileMode.Create, FileAccess.Write, FileShare.None);
        stream.CopyTo(fileStream);
        return fullPath;
    }

    public static string? ReadResourceString(string relativePath)
    {
        var resourceName = $"LVASI.{relativePath.Replace('/', '.').Replace('\\', '.')}";
        using var stream = ThisAssembly.GetManifestResourceStream(resourceName);
        if (stream == null)
            return null;
        using var reader = new StreamReader(stream);
        return reader.ReadToEnd();
    }
}
