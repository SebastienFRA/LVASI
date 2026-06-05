using LVASI.Models;

namespace LVASI.Services;

public interface ILogService
{
    void Add(OperationLog entry);
    List<OperationLog> GetAll();
    int Total { get; }
    int SuccessCount { get; }
    int FailCount { get; }
    string GetSummary();
    bool OpenLogFile();
    void MarkCheckpoint();
    string GetSummarySinceCheckpoint();
}
