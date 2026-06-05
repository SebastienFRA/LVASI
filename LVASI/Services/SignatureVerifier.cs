using System.IO;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;

namespace LVASI.Services;

public static class SignatureVerifier
{
    public static (bool IsValid, string Message) VerifySignature(string filePath, string? expectedPublisher, string[]? expectedThumbprints)
    {
        try
        {
#pragma warning disable SYSLIB0057
            var cert = new X509Certificate2(filePath);
#pragma warning restore SYSLIB0057
            var subject = cert.Subject;
            var thumbprint = cert.Thumbprint;

            var thumbprintOk = expectedThumbprints == null || expectedThumbprints.Length == 0 ||
                expectedThumbprints.Contains(thumbprint, StringComparer.OrdinalIgnoreCase);

            var publisherOk = string.IsNullOrEmpty(expectedPublisher) ||
                subject.Contains(expectedPublisher, StringComparison.OrdinalIgnoreCase);

            if (!thumbprintOk)
                return (false, $"Certificate thumbprint mismatch: got '{thumbprint}', expected one of [{string.Join(", ", expectedThumbprints!)}]");

            if (!publisherOk)
                return (false, $"Publisher mismatch: got '{subject}', expected '{expectedPublisher}'");

            var details = new List<string>();
            if (expectedThumbprints != null && expectedThumbprints.Length > 0)
            {
                var validThumbprints = expectedThumbprints.Where(t => !string.IsNullOrEmpty(t)).ToArray();
                details.Add($"thumbprint expected=[{string.Join(", ", validThumbprints)}], actual='{thumbprint}'");
            }
            if (!string.IsNullOrEmpty(expectedPublisher))
                details.Add($"publisher expected='{expectedPublisher}', actual='{subject}'");

            var detailStr = details.Count > 0 ? $" — {string.Join("; ", details)}" : "";
            return (true, $"Signature valid{detailStr}");
        }
        catch (CryptographicException ex) when (ex.HResult == -2146885628 || ex.Message.Contains("signed", StringComparison.OrdinalIgnoreCase))
        {
            return (false, "File is not digitally signed (Authenticode signature missing or invalid)");
        }
        catch (Exception ex)
        {
            return (false, $"Signature verification error: {ex.GetType().Name}: {ex.Message}");
        }
    }
}
