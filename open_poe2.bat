@echo off
REM POE2 Daum Site Launcher
REM Double-click to run

title Opening POE2 Site

echo ================================================================
echo.
echo   Path of Exile 2 - Daum Site Launcher
echo.
echo ================================================================
echo.

set "URL=https://pathofexile2.game.daum.net/main"

REM Find Edge executable
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    echo Opening in Edge browser...
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%URL%"
    echo.
    echo [SUCCESS] Opened site in Edge!
) else if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    echo Opening in Edge browser...
    start "" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" "%URL%"
    echo.
    echo [SUCCESS] Opened site in Edge!
) else (
    echo Edge not found. Trying microsoft-edge protocol...
    start microsoft-edge:%URL%
    echo.
    echo [DONE] Attempted to open site.
)

echo.
echo ================================================================
echo.
timeout /t 3 /nobreak > nul
