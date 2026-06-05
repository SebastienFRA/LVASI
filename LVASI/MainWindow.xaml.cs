using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using Hardcodet.Wpf.TaskbarNotification;

namespace LVASI;

public partial class MainWindow : Window
{
    private TaskbarIcon? _trayIcon;

    public MainWindow()
    {
        InitializeComponent();
    }

    private void OnTabControlLoaded(object sender, RoutedEventArgs e)
    {
        var tc = (System.Windows.Controls.TabControl)sender;
        var scroller = tc.Template.FindName("TabScroller", tc) as ScrollViewer;
        var arrowUp = tc.Template.FindName("ArrowUp", tc) as FrameworkElement;
        var arrowDown = tc.Template.FindName("ArrowDown", tc) as FrameworkElement;
        if (scroller == null || arrowUp == null || arrowDown == null) return;

        void UpdateArrows()
        {
            arrowUp.Visibility = scroller.VerticalOffset > 0 ? Visibility.Visible : Visibility.Collapsed;
            arrowDown.Visibility = scroller.VerticalOffset < scroller.ScrollableHeight ? Visibility.Visible : Visibility.Collapsed;
        }

        scroller.ScrollChanged += (_, _) => UpdateArrows();
        UpdateArrows();
    }

    private void OnItemsRightClick(object sender, MouseButtonEventArgs e)
    {
        e.Handled = true;

        var fe = e.OriginalSource as FrameworkElement;
        while (fe != null)
        {
            if (fe.DataContext is Models.SoftwareItem si)
            {
                if (InfoBand.Visibility == Visibility.Visible && InfoBandTitle.Text == si.Name)
                {
                    InfoBand.Visibility = Visibility.Collapsed;
                }
                else
                {
                    InfoBandTitle.Text = si.Name;
                    var desc = si.LocalizedDescription;
                    InfoBandDesc.Text = !string.IsNullOrEmpty(desc)
                        ? desc
                        : "Aucune description disponible pour ce logiciel.";
                    InfoBand.Visibility = Visibility.Visible;
                }
                return;
            }
            fe = fe.Parent as FrameworkElement;
        }
    }

    private void CloseInfoBand_Click(object sender, RoutedEventArgs e)
    {
        InfoBand.Visibility = Visibility.Collapsed;
    }

    private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
    {
        try
        {
            Process.Start(new ProcessStartInfo(e.Uri.AbsoluteUri) { UseShellExecute = true });
        }
        catch { }
        e.Handled = true;
    }

    protected override void OnStateChanged(EventArgs e)
    {
        base.OnStateChanged(e);

        var vm = DataContext as ViewModels.MainViewModel;
        if (vm?.HiddenMode == true && WindowState == WindowState.Minimized)
        {
            Hide();
            EnsureTrayIcon();
            _trayIcon!.ShowBalloonTip("LVASI", "LVASI continue de s'exécuter en mode caché.", BalloonIcon.Info);
        }
    }

    protected override void OnClosed(EventArgs e)
    {
        _trayIcon?.Dispose();
        _trayIcon = null;
        base.OnClosed(e);
    }

    private void EnsureTrayIcon()
    {
        if (_trayIcon != null) return;

        _trayIcon = new TaskbarIcon
        {
            Icon = System.Drawing.Icon.ExtractAssociatedIcon(Environment.ProcessPath!),
            ToolTipText = "LVASI"
        };
        _trayIcon.TrayMouseDoubleClick += (_, _) =>
        {
            _trayIcon.Dispose();
            _trayIcon = null;
            Show();
            WindowState = WindowState.Normal;
            Activate();
        };
        _trayIcon.TrayBalloonTipClicked += (_, _) =>
        {
            _trayIcon.Dispose();
            _trayIcon = null;
            Show();
            WindowState = WindowState.Normal;
            Activate();
        };
    }
}
