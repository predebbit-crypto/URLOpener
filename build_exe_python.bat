@echo off
REM POE2 Launcher EXE Build Script (Python + PyInstaller)
REM
REM Requirements: Python must be installed

title Building POE2 Launcher EXE (Python)

echo ================================================================
echo.
echo   Building POE2 Launcher EXE (Python + PyInstaller)
echo.
echo ================================================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Python is not installed.
    echo Please install Python first: https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

echo [1/3] Python check OK
echo.

REM Install PyInstaller
echo [2/3] Installing PyInstaller...
pip install pyinstaller
echo.

REM Build EXE
echo [3/3] Building EXE file...
pyinstaller --onefile --windowed --name POE2_Launcher poe2_launcher.py

if exist "dist\POE2_Launcher.exe" (
    echo.
    echo ================================================================
    echo.
    echo   [SUCCESS] POE2_Launcher.exe created!
    echo.
    echo   Location: dist\POE2_Launcher.exe
    echo.
    echo   Go to the dist folder and find POE2_Launcher.exe
    echo   Double-click to open POE2 site in Edge browser.
    echo.
    echo ================================================================

    REM Open dist folder
    explorer dist
) else (
    echo.
    echo [ERROR] Failed to create EXE file.
    echo.
)

echo.
pause
