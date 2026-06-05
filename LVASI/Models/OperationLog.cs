namespace LVASI.Models;

public class OperationLog
{
    public DateTime Timestamp { get; set; }
    public string SoftwareId { get; set; } = "";
    public string SoftwareName { get; set; } = "";
    public string Operation { get; set; } = ""; // Install, Download, OfflineInstall
    public bool Success { get; set; }
    public int? ExitCode { get; set; }
    public string? Details { get; set; }
    public string? ErrorMessage { get; set; }
}
