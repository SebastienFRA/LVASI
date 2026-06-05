using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LVASI.Bootstrapper
{
    static class Program
    {
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            if (!IsDotNet9DesktopInstalled())
            {
                var result = MessageBox.Show(
                    "LVASI nécessite .NET 9 Desktop Runtime pour fonctionner.\n" +
                    "Voulez-vous le télécharger et l'installer maintenant ?\n\n" +
                    "Taille : ~15 Mo — Nécessite une connexion Internet.",
                    "LVASI — Runtime requis",
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question);

                if (result == DialogResult.Yes)
                {
                    using var form = new InstallForm();
                    form.ShowDialog();
                    if (!form.InstallSuccess)
                        return;
                }
                else
                {
                    return;
                }
            }

            LaunchEmbeddedApp();
        }

        static bool IsDotNet9DesktopInstalled()
        {
            var baseDir = Path.Combine(
                Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles),
                "dotnet", "shared", "Microsoft.WindowsDesktop.App");

            if (Directory.Exists(baseDir))
                foreach (var dir in Directory.GetDirectories(baseDir, "9.*"))
                    if (dir.Length > 0) return true;

            baseDir = Path.Combine(
                Environment.GetFolderPath(Environment.SpecialFolder.ProgramFilesX86),
                "dotnet", "shared", "Microsoft.WindowsDesktop.App");

            if (Directory.Exists(baseDir))
                foreach (var dir in Directory.GetDirectories(baseDir, "9.*"))
                    if (dir.Length > 0) return true;

            try
            {
                var psi = new ProcessStartInfo("dotnet", "--list-runtimes")
                {
                    RedirectStandardOutput = true,
                    UseShellExecute = false,
                    CreateNoWindow = true
                };
                var proc = Process.Start(psi);
                string output = proc.StandardOutput.ReadToEnd();
                proc.WaitForExit(5000);
                return output.Contains("WindowsDesktop.App 9.");
            }
            catch { }

            return false;
        }

        static void LaunchEmbeddedApp()
        {
            try
            {
                var tempDir = Path.Combine(Path.GetTempPath(), "LVASI_" + Guid.NewGuid().ToString("N"));
                Directory.CreateDirectory(tempDir);
                var appPath = Path.Combine(tempDir, "LVASI.exe");

                using var stream = Assembly.GetExecutingAssembly().GetManifestResourceStream("Bootstrapper.LVASI.exe");
                if (stream == null)
                {
                    MessageBox.Show("Application embarquée introuvable.", "LVASI",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                using (var outStream = new FileStream(appPath, FileMode.Create, FileAccess.Write, FileShare.None))
                {
                    stream.CopyTo(outStream);
                }

                System.Threading.Thread.Sleep(500);

                Process.Start(appPath);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erreur au lancement : " + ex.Message, "LVASI",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
