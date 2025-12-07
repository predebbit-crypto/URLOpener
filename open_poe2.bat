@echo off
REM POE2 다음 사이트를 Edge로 여는 배치 파일
REM 더블클릭하여 실행하세요

title POE2 다음 사이트 열기

echo ================================================================
echo.
echo   POE2 (Path of Exile 2) 다음 사이트 열기
echo.
echo ================================================================
echo.

set "URL=https://pathofexile2.game.daum.net/main"

REM Edge 실행 경로 확인
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    echo Edge 브라우저로 열고 있습니다...
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%URL%"
    echo.
    echo [성공] Edge로 사이트를 열었습니다!
) else if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    echo Edge 브라우저로 열고 있습니다...
    start "" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" "%URL%"
    echo.
    echo [성공] Edge로 사이트를 열었습니다!
) else (
    echo Edge를 찾을 수 없습니다. microsoft-edge 프로토콜로 시도합니다...
    start microsoft-edge:%URL%
    echo.
    echo [완료] 사이트 열기를 시도했습니다.
)

echo.
echo ================================================================
echo.
timeout /t 3 /nobreak > nul
