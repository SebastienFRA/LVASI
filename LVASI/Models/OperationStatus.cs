using System.ComponentModel;

namespace LVASI.Models;

public enum OperationState
{
    Pending,
    Processing,
    Success,
    Failed
}

public class OperationStatus : INotifyPropertyChanged
{
    private OperationState _state;
    private string _details;

    public string SoftwareName { get; }
    public string SoftwareId { get; }

    public OperationState State
    {
        get => _state;
        set { _state = value; OnPropertyChanged(); OnPropertyChanged(nameof(Icon)); OnPropertyChanged(nameof(DisplayText)); }
    }

    public string Details
    {
        get => _details;
        set { _details = value; OnPropertyChanged(); }
    }

    public string Icon => State switch
    {
        OperationState.Pending => "○",
        OperationState.Processing => "▶",
        OperationState.Success => "✓",
        OperationState.Failed => "✗",
        _ => "○"
    };

    public string DisplayText => "";

    public OperationStatus(string softwareId, string softwareName)
    {
        SoftwareId = softwareId;
        SoftwareName = softwareName;
        _state = OperationState.Pending;
        _details = "";
    }

    public event PropertyChangedEventHandler? PropertyChanged;
    protected void OnPropertyChanged([System.Runtime.CompilerServices.CallerMemberName] string? name = null)
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
}
