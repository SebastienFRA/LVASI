using System;
using System.Drawing;
using System.IO;
using System.Diagnostics;
using System.Net;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LVASI.Bootstrapper
{
    class InstallForm : Form
    {
        private Label _status;
        private ProgressBar _progress;

        public bool InstallSuccess { get; private set; }

        public InstallForm()
        {
            Text = "LVASI — Installation de .NET 9";
            Size = new Size(440, 160);
            StartPosition = FormStartPosition.CenterScreen;
            FormBorderStyle = FormBorderStyle.FixedDialog;
            MaximizeBox = false;
            MinimizeBox = false;
            ControlBox = false;
            ShowInTaskbar = false;

            _status = new Label
            {
                Text = "Téléchargement de .NET 9 Desktop Runtime...",
                AutoSize = false,
                Dock = DockStyle.Fill,
                TextAlign = ContentAlignment.MiddleCenter,
                Padding = new Padding(10)
            };

            _progress = new ProgressBar
            {
                Dock = DockStyle.Bottom,
                Height = 30,
                Style = ProgressBarStyle.Marquee,
                MarqueeAnimationSpeed = 30
            };

            Controls.Add(_progress);
            Controls.Add(_status);

            Shown += async (s, e) =>
            {
                await InstallRuntimeAsync();
                if (true) Close();
            };
        }

        private async Task InstallRuntimeAsync()
        {
            var installerPath = Path.Combine(Path.GetTempPath(), "dotnet9-desktop-runtime.exe");

            try
            {
                using var client = new WebClient();

                client.DownloadProgressChanged += (s, e) =>
                {
                    _progress.Style = ProgressBarStyle.Blocks;
                    _progress.Minimum = 0;
                    _progress.Maximum = 100;
                    _progress.Value = e.ProgressPercentage;
                    _status.Text = $"Téléchargement... {e.ProgressPercentage}% ({e.BytesReceived / 1048576} Mo / {e.TotalBytesToReceive / 1048576} Mo)";
                };

                await client.DownloadFileTaskAsync(
                    "https://aka.ms/dotnet/9.0/windowsdesktop-runtime-win-x64.exe",
                    installerPath);

                _status.Text = "Installation en cours... Veuillez patienter.";
                _progress.Style = ProgressBarStyle.Marquee;

                var installProc = Process.Start(new ProcessStartInfo(installerPath)
                {
                    Arguments = "/install /quiet /norestart",
                    UseShellExecute = true
                });

                installProc?.WaitForExit();
                File.Delete(installerPath);

                if (installProc == null || (installProc.ExitCode != 0 && installProc.ExitCode != 1641 && installProc.ExitCode != 3010))
                {
                    MessageBox.Show(
                        "Erreur d'installation (code " + (installProc?.ExitCode).ToString() + ").\n" +
                        "Installez manuellement depuis :\n" +
                        "https://aka.ms/dotnet/9.0/windowsdesktop-runtime-win-x64.exe",
                        "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                _status.Text = "Installation terminée !";
                InstallSuccess = true;
                await Task.Delay(500);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erreur : " + ex.Message, "LVASI",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
