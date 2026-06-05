using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace LVASI.Converters;

public class TileColorConverter : IValueConverter
{
    private static readonly System.Windows.Media.Color[] Palette =
    [
        System.Windows.Media.Color.FromRgb(0x00, 0x78, 0xD4),
        System.Windows.Media.Color.FromRgb(0x7A, 0x5D, 0xC0),
        System.Windows.Media.Color.FromRgb(0xE8, 0x11, 0x23),
        System.Windows.Media.Color.FromRgb(0x49, 0x82, 0x0E),
        System.Windows.Media.Color.FromRgb(0xCF, 0x8A, 0x00),
        System.Windows.Media.Color.FromRgb(0x00, 0x8A, 0x8A),
        System.Windows.Media.Color.FromRgb(0xE9, 0x6A, 0x00),
        System.Windows.Media.Color.FromRgb(0x88, 0x1C, 0xA3),
        System.Windows.Media.Color.FromRgb(0x01, 0x73, 0xAA),
        System.Windows.Media.Color.FromRgb(0xBD, 0x33, 0x33),
        System.Windows.Media.Color.FromRgb(0x2E, 0x7D, 0x32),
        System.Windows.Media.Color.FromRgb(0x67, 0x1E, 0x8A),
        System.Windows.Media.Color.FromRgb(0xD9, 0x54, 0x21),
        System.Windows.Media.Color.FromRgb(0x00, 0x96, 0x88),
        System.Windows.Media.Color.FromRgb(0x45, 0x6E, 0x9F),
        System.Windows.Media.Color.FromRgb(0x7F, 0x60, 0x00),
    ];

    public object Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is string id)
        {
            var hash = id.GetHashCode();
            var idx = Math.Abs(hash) % Palette.Length;
            return new SolidColorBrush(Palette[idx]);
        }
        return new SolidColorBrush(Palette[0]);
    }

    public object ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        => throw new NotSupportedException();
}
