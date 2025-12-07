@echo off
REM POE2 Launcher EXE Build Script
REM Run this file on Windows to create POE2_Launcher.exe

title Building POE2 Launcher EXE

echo ================================================================
echo.
echo   Building POE2 Launcher EXE...
echo.
echo ================================================================
echo.

REM Find .NET Framework C# compiler
set "CSC="

REM Check .NET Framework 4.x paths
if exist "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe" (
    set "CSC=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
) else if exist "C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe" (
    set "CSC=C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe"
)

if "%CSC%"=="" (
    echo [ERROR] C# compiler not found.
    echo Please make sure .NET Framework is installed.
    echo.
    pause
    exit /b 1
)

echo Found C# compiler: %CSC%
echo.
echo Compiling...
echo.

REM Compile (no console window)
"%CSC%" /target:winexe /out:POE2_Launcher.exe POE2_Launcher.cs

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ================================================================
    echo.
    echo   [SUCCESS] POE2_Launcher.exe created!
    echo.
    echo   Find POE2_Launcher.exe in the current folder.
    echo   Double-click to open POE2 site in Edge browser.
    echo.
    echo ================================================================
) else (
    echo.
    echo [ERROR] Compilation failed.
    echo.
)

echo.
pause
