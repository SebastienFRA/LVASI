using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace LVASI.Converters;

public class BoolToVisConverter : IValueConverter
{
    public object Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        var invert = parameter is string s && s == "invert";
        var b = value is true;
        return (b ^ invert) ? Visibility.Visible : Visibility.Collapsed;
    }

    public object ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        => value is Visibility.Visible;
}
