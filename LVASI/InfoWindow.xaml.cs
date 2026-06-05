using System.Windows;

namespace LVASI;

public partial class InfoWindow : Window
{
    public InfoWindow(string name, string description)
    {
        InitializeComponent();
        Title = name;
        TitleText.Text = name;
        DescText.Text = description;
    }

    private void Ok_Click(object sender, RoutedEventArgs e)
    {
        Close();
    }
}
