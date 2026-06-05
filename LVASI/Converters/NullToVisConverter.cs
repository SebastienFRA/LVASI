using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace LVASI.Converters;

public class NullToVisConverter : IValueConverter
{
    public object Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        var invert = parameter is string s && s == "invert";
        var isNull = value is null || (value is string str && string.IsNullOrEmpty(str));
        return (isNull ^ invert) ? Visibility.Collapsed : Visibility.Visible;
    }

    public object ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        => throw new NotSupportedException();
}
