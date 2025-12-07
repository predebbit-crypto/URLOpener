using System;
using System.Diagnostics;

class POE2Launcher
{
    static void Main()
    {
        string url = "https://pathofexile2.game.daum.net/main";

        try
        {
            // Try to launch with Edge
            Process.Start(new ProcessStartInfo
            {
                FileName = "msedge",
                Arguments = url,
                UseShellExecute = true
            });
        }
        catch
        {
            // Fallback: use microsoft-edge protocol
            try
            {
                Process.Start(new ProcessStartInfo
                {
                    FileName = "microsoft-edge:" + url,
                    UseShellExecute = true
                });
            }
            catch
            {
                // Last resort: use default browser
                Process.Start(new ProcessStartInfo
                {
                    FileName = url,
                    UseShellExecute = true
                });
            }
        }
    }
}
