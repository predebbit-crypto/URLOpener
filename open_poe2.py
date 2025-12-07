#!/usr/bin/env python3
"""
POE2 URL Opener - Opens Path of Exile 2 Daum website in Edge browser
"""

import webbrowser
import subprocess
import sys
import platform

# URL to open
POE2_URL = "https://pathofexile2.game.daum.net/main"

def open_with_edge():
    """Open URL with Microsoft Edge browser"""
    system = platform.system()

    try:
        if system == "Windows":
            # Try Edge on Windows
            edge_path = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe"
            try:
                subprocess.Popen([edge_path, POE2_URL])
                print(f"Opened in Edge: {POE2_URL}")
            except FileNotFoundError:
                # Try 64-bit path
                edge_path = "C:\\Program Files\\Microsoft\\Edge\\Application\\msedge.exe"
                subprocess.Popen([edge_path, POE2_URL])
                print(f"Opened in Edge: {POE2_URL}")

        elif system == "Darwin":  # macOS
            subprocess.Popen(["open", "-a", "Microsoft Edge", POE2_URL])
            print(f"Opened in Edge: {POE2_URL}")

        elif system == "Linux":
            # Try Edge on Linux
            try:
                subprocess.Popen(["microsoft-edge", POE2_URL])
                print(f"Opened in Edge: {POE2_URL}")
            except FileNotFoundError:
                try:
                    subprocess.Popen(["microsoft-edge-stable", POE2_URL])
                    print(f"Opened in Edge: {POE2_URL}")
                except FileNotFoundError:
                    print("Edge not found. Opening in default browser.")
                    webbrowser.open(POE2_URL)
        else:
            print(f"Unsupported OS. Opening in default browser.")
            webbrowser.open(POE2_URL)

    except Exception as e:
        print(f"Failed to launch Edge: {e}")
        print("Opening in default browser...")
        webbrowser.open(POE2_URL)

if __name__ == "__main__":
    print("=" * 60)
    print("Opening POE2 Daum Site")
    print("=" * 60)
    open_with_edge()
    print("=" * 60)

    # Wait on Windows so window doesn't close immediately
    if platform.system() == "Windows":
        input("\nPress any key to exit...")
