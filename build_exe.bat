@echo off
REM POE2 Launcher EXE 빌드 스크립트
REM Windows에서 이 파일을 실행하면 EXE 파일이 생성됩니다

title POE2 Launcher EXE 빌드

echo ================================================================
echo.
echo   POE2 Launcher EXE 파일 빌드 중...
echo.
echo ================================================================
echo.

REM .NET Framework의 C# 컴파일러 경로 찾기
set "CSC="

REM .NET Framework 4.x 경로 확인
if exist "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe" (
    set "CSC=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
) else if exist "C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe" (
    set "CSC=C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe"
)

if "%CSC%"=="" (
    echo [오류] C# 컴파일러를 찾을 수 없습니다.
    echo .NET Framework가 설치되어 있는지 확인하세요.
    echo.
    pause
    exit /b 1
)

echo C# 컴파일러 발견: %CSC%
echo.
echo 컴파일 중...

REM 컴파일 실행 (콘솔 창 없이)
"%CSC%" /target:winexe /out:POE2_Launcher.exe POE2_Launcher.cs

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ================================================================
    echo.
    echo   [성공] POE2_Launcher.exe 파일이 생성되었습니다!
    echo.
    echo   현재 폴더에서 POE2_Launcher.exe 파일을 찾으세요.
    echo   더블클릭하면 Edge 브라우저로 POE2 사이트가 열립니다.
    echo.
    echo ================================================================
) else (
    echo.
    echo [오류] 컴파일에 실패했습니다.
    echo.
)

echo.
pause
