using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text.Json.Serialization;

namespace LVASI.Models;

public class SoftwareCategory : INotifyPropertyChanged
{
    private string _name = "";
    private string? _englishNameOverride;

    public string Name
    {
        get => _name;
        set
        {
            if (_englishNameOverride == null && string.IsNullOrEmpty(_englishName))
                _englishName = value ?? "";
            _name = value ?? "";
            OnPropertyChanged();
        }
    }

    private string _englishName = "";
    public string EnglishName => _englishNameOverride ?? _englishName;

    public string? EnglishNameOverride
    {
        get => _englishNameOverride;
        set
        {
            _englishNameOverride = value;
            OnPropertyChanged();
        }
    }
    public string Icon { get; set; } = "";

    [JsonIgnore]
    public string? IconPath { get; set; }

    public ObservableCollection<SoftwareItem> Items { get; set; } = new();

    private bool _hasSelection;
    [JsonIgnore]
    public bool HasSelection
    {
        get => _hasSelection;
        set { _hasSelection = value; OnPropertyChanged(); }
    }

    public event PropertyChangedEventHandler? PropertyChanged;
    protected void OnPropertyChanged([CallerMemberName] string? name = null) =>
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
}
