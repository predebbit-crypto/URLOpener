import subprocess
import sys
import os

# URL to open
URL = "https://pathofexile2.game.daum.net/main"

# Edge paths to try
EDGE_PATHS = [
    r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
    r"C:\Program Files\Microsoft\Edge\Application\msedge.exe"
]

def main():
    # Try to find and launch Edge
    for edge_path in EDGE_PATHS:
        if os.path.exists(edge_path):
            subprocess.Popen([edge_path, URL])
            sys.exit(0)

    # Fallback: use microsoft-edge protocol
    subprocess.Popen(["cmd", "/c", "start", "microsoft-edge:" + URL])

if __name__ == "__main__":
    main()
