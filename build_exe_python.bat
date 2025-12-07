@echo off
REM POE2 Launcher EXE 빌드 스크립트 (Python + PyInstaller 사용)
REM
REM 사전 요구사항: Python이 설치되어 있어야 합니다

title POE2 Launcher EXE 빌드 (Python)

echo ================================================================
echo.
echo   POE2 Launcher EXE 파일 빌드 중 (Python + PyInstaller)
echo.
echo ================================================================
echo.

REM Python이 설치되어 있는지 확인
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [오류] Python이 설치되어 있지 않습니다.
    echo Python을 먼저 설치해주세요: https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

echo [1/3] Python 확인 완료
echo.

REM PyInstaller 설치
echo [2/3] PyInstaller 설치 중...
pip install pyinstaller
echo.

REM EXE 빌드
echo [3/3] EXE 파일 빌드 중...
pyinstaller --onefile --windowed --name POE2_Launcher poe2_launcher.py

if exist "dist\POE2_Launcher.exe" (
    echo.
    echo ================================================================
    echo.
    echo   [성공] POE2_Launcher.exe 파일이 생성되었습니다!
    echo.
    echo   위치: dist\POE2_Launcher.exe
    echo.
    echo   dist 폴더로 가서 POE2_Launcher.exe 파일을 찾으세요.
    echo   더블클릭하면 Edge 브라우저로 POE2 사이트가 열립니다.
    echo.
    echo ================================================================

    REM dist 폴더 열기
    explorer dist
) else (
    echo.
    echo [오류] EXE 파일 생성에 실패했습니다.
    echo.
)

echo.
pause
