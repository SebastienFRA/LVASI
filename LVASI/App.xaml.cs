using System.Windows;
using LVASI.Services;
using LVASI.ViewModels;

namespace LVASI;

public partial class App : Application
{
    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        var dataService = new SoftwareDataService();
        var downloadService = new DownloadService();
        var installService = new InstallService();
        var updateService = new UpdateService();
        var logService = new LogService();
        var translationService = new TranslationService();

        var viewModel = new MainViewModel(dataService, downloadService, installService, updateService, logService, translationService);

        var mainWindow = new MainWindow
        {
            DataContext = viewModel
        };
        mainWindow.Show();
    }
}
