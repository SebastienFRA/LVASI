namespace LVASI.Services;

public interface IUpdateService
{
    Task<string?> CheckForUpdateAsync(string currentVersion);
}
