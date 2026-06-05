using System.IO;
using System.Linq;
using System.Text.Json;
using LVASI.Models;

namespace LVASI.Services;

public class LogService : ILogService
{
    private readonly string _jsonPath;
    private readonly string _txtPath;
    private readonly List<OperationLog> _entries = new();
    private readonly object _lock = new();
    private int _checkpointIndex;

    public LogService()
    {
        var dir = AppDomain.CurrentDomain.BaseDirectory;
        _jsonPath = Path.Combine(dir, "LVASI.log.json");
        _txtPath = Path.Combine(dir, "LVASI.log.txt");
        Load();
    }

    public void Add(OperationLog entry)
    {
        lock (_lock)
        {
            entry.Timestamp = DateTime.Now;
            _entries.Add(entry);
            Save();
        }
    }

    public List<OperationLog> GetAll() => _entries.ToList();

    public int Total => _entries.Count;
    public int SuccessCount => _entries.Count(e => e.Success);
    public int FailCount => _entries.Count(e => !e.Success);

    public void MarkCheckpoint()
    {
        lock (_lock) { _checkpointIndex = _entries.Count; }
    }

    public string GetSummarySinceCheckpoint()
    {
        var sb = new System.Text.StringBuilder();
        List<OperationLog> recent;
        lock (_lock) { recent = _entries.Skip(_checkpointIndex).ToList(); }

        sb.AppendLine($"Opérations : {recent.Count}");
        sb.AppendLine($"Réussies : {recent.Count(e => e.Success)}");
        sb.AppendLine($"Échecs : {recent.Count(e => !e.Success)}");
        sb.AppendLine();

        if (!recent.Any()) return sb.ToString();

        sb.AppendLine("Journal des opérations :");
        sb.AppendLine(new string('-', 60));
        foreach (var e in recent)
        {
            var status = e.Success ? "RÉUSSITE" : "ÉCHEC";
            sb.AppendLine($"[{status}] [{e.Timestamp:HH:mm:ss}] {e.Operation} - {e.SoftwareName}");
            if (!e.Success && e.ErrorMessage != null)
                sb.AppendLine($"         Cause : {e.ErrorMessage}");
        }

        return sb.ToString();
    }

    public string GetSummary()
    {
        var sb = new System.Text.StringBuilder();
        sb.AppendLine($"Total opérations : {Total}");
        sb.AppendLine($"Réussies : {SuccessCount}");
        sb.AppendLine($"Échecs : {FailCount}");
        sb.AppendLine();

        if (!_entries.Any()) return sb.ToString();

        sb.AppendLine("Journal des opérations :");
        sb.AppendLine(new string('-', 60));
        foreach (var e in _entries)
        {
            var status = e.Success ? "RÉUSSITE" : "ÉCHEC";
            sb.AppendLine($"[{status}] [{e.Timestamp:HH:mm:ss}] {e.Operation} - {e.SoftwareName}");
            if (!e.Success && e.ErrorMessage != null)
                sb.AppendLine($"         Cause : {e.ErrorMessage}");
        }

        return sb.ToString();
    }

    public bool OpenLogFile()
    {
        try
        {
            Save();
            var path = File.Exists(_txtPath) ? _txtPath : _jsonPath;
            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo
            {
                FileName = path,
                UseShellExecute = true
            });
            return true;
        }
        catch { return false; }
    }

    private void Load()
    {
        try
        {
            if (File.Exists(_jsonPath))
            {
                var json = File.ReadAllText(_jsonPath);
                var loaded = JsonSerializer.Deserialize<List<OperationLog>>(json);
                if (loaded != null) _entries.AddRange(loaded);
            }
        }
        catch { }
    }

    private void Save()
    {
        try
        {
            var json = JsonSerializer.Serialize(_entries, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(_jsonPath, json);

            using (var writer = new StreamWriter(_txtPath, false))
            {
                foreach (var e in _entries)
                {
                    var status = e.Success ? "RÉUSSITE" : "ÉCHEC";
                    writer.WriteLine($"[{status}] [{e.Timestamp:yyyy-MM-dd HH:mm:ss}] {e.Operation,-18} | {e.SoftwareName}");
                    if (!e.Success && e.ErrorMessage != null)
                        writer.WriteLine($"   Cause : {e.ErrorMessage}");
                }
            }
        }
        catch { }
    }
}
