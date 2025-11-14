@echo off
setlocal enabledelayedexpansion
title LP-2 File Downloader
color 07
REM Ensure script is run from the correct location
cd /d "%~dp0"
REM Check if curl is available
where curl >nul 2>&1
if errorlevel 1 (
    echo.
    echo ERROR: curl is not installed or not in PATH
    echo Please install curl from https://curl.se/download.html
    pause
    exit /b 1
)

echo.
echo LP-2 repository - detected files (will be downloaded by this script):
echo.
echo PR-1 (Static pages):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/about.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/about.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/contact.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/contact.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/events.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/events.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/home.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%20pages)/home.html
echo.
echo PR-3 (Validation):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css
echo.
echo PR-2 (Bootstrap):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html
echo.
echo PR-4 (Filter):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/event.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css
echo.
echo PR-5 (Database):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/event.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/server.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css
echo.
echo PR-6 (CRUD):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html
echo.
echo PR-7 (Participant List):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%20List)/participants.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%20List)/participants.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%20List)/participants.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%20List)/participants.json
echo.

:menu
cls
echo ========================================
echo    LP-2 Assignment File Downloader
echo ========================================
echo.
echo Select a PR folder to download:
echo.
echo [1] PR-1 (Static pages) - download all files
echo [2] PR-2 (Bootstrap) - download all files
echo [3] PR-3 (Validation) - download all files
echo [4] PR-4 (Filter) - download all files
echo [5] PR-5 (Database) - download all files
echo [6] PR-6 (CRUD) - download all files
echo [7] PR-7 (Participant List) - download all files
echo.
echo [8] Download ALL files from all PR folders
echo [0] Exit
echo.
echo ========================================
set /p choice="Enter your choice (0-8): "

if "%choice%"=="1" goto pr1
if "%choice%"=="2" goto pr2
if "%choice%"=="3" goto pr3
if "%choice%"=="4" goto pr4
if "%choice%"=="5" goto pr5
if "%choice%"=="6" goto pr6
if "%choice%"=="7" goto pr7
if "%choice%"=="8" goto download_all
if "%choice%"=="0" goto exit
goto invalid

:pr1
echo.
echo Downloading PR-1 (Static pages)...
if not exist "PR-1(Static pages)" mkdir "PR-1(Static pages)"
curl -s -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css" && echo [OK] about.css || echo [FAIL] about.css
curl -s -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html" && echo [OK] about.html || echo [FAIL] about.html
curl -s -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css" && echo [OK] contact.css || echo [FAIL] contact.css
curl -s -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html" && echo [OK] contact.html || echo [FAIL] contact.html
curl -s -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css" && echo [OK] events.css || echo [FAIL] events.css
curl -s -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html" && echo [OK] events.html || echo [FAIL] events.html
curl -s -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css" && echo [OK] home.css || echo [FAIL] home.css
curl -s -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html" && echo [OK] home.html || echo [FAIL] home.html
echo.
echo PR-1 download completed.
pause
goto menu

:pr2
echo.
echo Downloading PR-2 (Bootstrap)...
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
curl -s -L -o "PR-2(Bootstrap)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css" && echo [OK] events.css || echo [FAIL] events.css
curl -s -L -o "PR-2(Bootstrap)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html" && echo [OK] events.html || echo [FAIL] events.html
echo.
echo PR-2 download completed.
pause
goto menu

:pr3
echo.
echo Downloading PR-3 (Validation)...
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
curl -s -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [OK] event.html || echo [FAIL] event.html
curl -s -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [OK] script.js || echo [FAIL] script.js
curl -s -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [OK] style.css || echo [FAIL] style.css
echo.
echo PR-3 download completed.
pause
goto menu

:pr4
echo.
echo Downloading PR-4 (Filter)...
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
curl -s -L -o "PR-4(Filter)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/event.html" && echo [OK] event.html || echo [FAIL] event.html
curl -s -L -o "PR-4(Filter)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js" && echo [OK] script.js || echo [FAIL] script.js
curl -s -L -o "PR-4(Filter)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css" && echo [OK] style.css || echo [FAIL] style.css
echo.
echo PR-4 download completed.
pause
goto menu

:pr5
echo.
echo Downloading PR-5 (Database)...
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
curl -s -L -o "PR-5(Database)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/event.html" && echo [OK] event.html || echo [FAIL] event.html
curl -s -L -o "PR-5(Database)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js" && echo [OK] script.js || echo [FAIL] script.js
curl -s -L -o "PR-5(Database)\server.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/server.js" && echo [OK] server.js || echo [FAIL] server.js
curl -s -L -o "PR-5(Database)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css" && echo [OK] style.css || echo [FAIL] style.css
echo.
echo PR-5 download completed.
pause
goto menu

:pr6
echo.
echo Downloading PR-6 (CRUD)...
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
curl -s -L -o "PR-6(CRUD)\admin.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css" && echo [OK] admin.css || echo [FAIL] admin.css
curl -s -L -o "PR-6(CRUD)\admin.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js" && echo [OK] admin.js || echo [FAIL] admin.js
curl -s -L -o "PR-6(CRUD)\dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html" && echo [OK] dashboard.html || echo [FAIL] dashboard.html
curl -s -L -o "PR-6(CRUD)\login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html" && echo [OK] login.html || echo [FAIL] login.html
echo.
echo PR-6 download completed.
pause
goto menu

:pr7
echo.
echo Downloading PR-7 (Participant List)...
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"
curl -s -L -o "PR-7(Participant List)\participants.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.css" && echo [OK] participants.css || echo [FAIL] participants.css
curl -s -L -o "PR-7(Participant List)\participants.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.html" && echo [OK] participants.html || echo [FAIL] participants.html
curl -s -L -o "PR-7(Participant List)\participants.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.js" && echo [OK] participants.js || echo [FAIL] participants.js
curl -s -L -o "PR-7(Participant List)\participants.json" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.json" && echo [OK] participants.json || echo [FAIL] participants.json
echo.
echo PR-7 download completed.
pause
goto menu

:download_all
echo.
echo Downloading ALL files from all PR folders...
if not exist "PR-1(Static pages)" mkdir "PR-1(Static pages)"
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"

echo --- PR-1 (Static pages) ---
curl -s -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css" && echo [OK] about.css || echo [SKIP] about.css
curl -s -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html" && echo [OK] about.html || echo [SKIP] about.html
curl -s -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css" && echo [OK] contact.css || echo [SKIP] contact.css
curl -s -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html" && echo [OK] contact.html || echo [SKIP] contact.html
curl -s -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css" && echo [OK] events.css || echo [SKIP] events.css
curl -s -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html" && echo [OK] events.html || echo [SKIP] events.html
curl -s -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css" && echo [OK] home.css || echo [SKIP] home.css
curl -s -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html" && echo [OK] home.html || echo [SKIP] home.html

echo --- PR-2 (Bootstrap) ---
curl -s -L -o "PR-2(Bootstrap)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css" && echo [OK] events.css || echo [SKIP] events.css
curl -s -L -o "PR-2(Bootstrap)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html" && echo [OK] events.html || echo [SKIP] events.html

echo --- PR-3 (Validation) ---
curl -s -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [OK] event.html || echo [SKIP] event.html
curl -s -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [OK] script.js || echo [SKIP] script.js
curl -s -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [OK] style.css || echo [SKIP] style.css

echo --- PR-4 (Filter) ---
curl -s -L -o "PR-4(Filter)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/event.html" && echo [OK] event.html || echo [SKIP] event.html
curl -s -L -o "PR-4(Filter)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js" && echo [OK] script.js || echo [SKIP] script.js
curl -s -L -o "PR-4(Filter)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css" && echo [OK] style.css || echo [SKIP] style.css

echo --- PR-5 (Database) ---
curl -s -L -o "PR-5(Database)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/event.html" && echo [OK] event.html || echo [SKIP] event.html
curl -s -L -o "PR-5(Database)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js" && echo [OK] script.js || echo [SKIP] script.js
curl -s -L -o "PR-5(Database)\server.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/server.js" && echo [OK] server.js || echo [SKIP] server.js
curl -s -L -o "PR-5(Database)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css" && echo [OK] style.css || echo [SKIP] style.css

echo --- PR-6 (CRUD) ---
curl -s -L -o "PR-6(CRUD)\admin.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css" && echo [OK] admin.css || echo [SKIP] admin.css
curl -s -L -o "PR-6(CRUD)\admin.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js" && echo [OK] admin.js || echo [SKIP] admin.js
curl -s -L -o "PR-6(CRUD)\dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html" && echo [OK] dashboard.html || echo [SKIP] dashboard.html
curl -s -L -o "PR-6(CRUD)\login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html" && echo [OK] login.html || echo [SKIP] login.html

echo --- PR-7 (Participant List) ---
curl -s -L -o "PR-7(Participant List)\participants.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.css" && echo [OK] participants.css || echo [SKIP] participants.css
curl -s -L -o "PR-7(Participant List)\participants.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.html" && echo [OK] participants.html || echo [SKIP] participants.html
curl -s -L -o "PR-7(Participant List)\participants.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.js" && echo [OK] participants.js || echo [SKIP] participants.js
curl -s -L -o "PR-7(Participant List)\participants.json" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.json" && echo [OK] participants.json || echo [SKIP] participants.json

echo.
echo All files downloaded successfully!
pause
goto menu

:invalid
echo.
echo Invalid choice. Please enter a number between 0 and 8.
timeout /t 2 >nul
goto menu

:exit
echo.
echo Exiting.
timeout /t 1 >nul
endlocal
exit