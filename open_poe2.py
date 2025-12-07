#!/usr/bin/env python3
"""
POE2 URL Opener - Opens Path of Exile 2 Daum website in Edge browser
클릭하면 Edge 브라우저로 POE2 다음 사이트를 엽니다
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
            # Windows에서 Edge 실행
            edge_path = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe"
            try:
                subprocess.Popen([edge_path, POE2_URL])
                print(f"✓ Edge로 열었습니다: {POE2_URL}")
            except FileNotFoundError:
                # 64비트 경로 시도
                edge_path = "C:\\Program Files\\Microsoft\\Edge\\Application\\msedge.exe"
                subprocess.Popen([edge_path, POE2_URL])
                print(f"✓ Edge로 열었습니다: {POE2_URL}")

        elif system == "Darwin":  # macOS
            subprocess.Popen(["open", "-a", "Microsoft Edge", POE2_URL])
            print(f"✓ Edge로 열었습니다: {POE2_URL}")

        elif system == "Linux":
            # Linux에서 Edge 실행 (microsoft-edge 또는 microsoft-edge-stable)
            try:
                subprocess.Popen(["microsoft-edge", POE2_URL])
                print(f"✓ Edge로 열었습니다: {POE2_URL}")
            except FileNotFoundError:
                try:
                    subprocess.Popen(["microsoft-edge-stable", POE2_URL])
                    print(f"✓ Edge로 열었습니다: {POE2_URL}")
                except FileNotFoundError:
                    print("⚠ Edge를 찾을 수 없습니다. 기본 브라우저로 엽니다.")
                    webbrowser.open(POE2_URL)
        else:
            print(f"⚠ 지원하지 않는 운영체제입니다. 기본 브라우저로 엽니다.")
            webbrowser.open(POE2_URL)

    except Exception as e:
        print(f"⚠ Edge 실행 실패: {e}")
        print("기본 브라우저로 엽니다...")
        webbrowser.open(POE2_URL)

if __name__ == "__main__":
    print("=" * 60)
    print("POE2 다음 사이트 열기")
    print("=" * 60)
    open_with_edge()
    print("=" * 60)

    # Windows에서는 창이 바로 닫히지 않도록 대기
    if platform.system() == "Windows":
        input("\n아무 키나 눌러 종료하세요...")
