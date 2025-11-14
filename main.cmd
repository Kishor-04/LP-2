@echo off
setlocal enabledelayedexpansion
title LP-2 File Downloader
color 07
REM Ensure script is run from the correct location
cd /d "%~dp0"

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
echo PR-6 (CRUD):
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html
echo   https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html
echo.
echo (Other PR folders detected in the repo may not have returned file lists in the scan.)
echo.

:menu
cls
echo ========================================
echo    LP-2 Assignment File Downloader
echo ========================================
echo.
echo Select a PR folder to download:
echo.
echo [1] PR-1 (Static pages) - download all discovered files
echo [2] PR-2 (Bootstrap) - no discovered files (creates folder)
echo [3] PR-3 (Validation) - download all discovered files
echo [4] PR-4 (Filter) - no discovered files (creates folder)
echo [5] PR-5 (Database) - no discovered files (creates folder)
echo [6] PR-6 (CRUD) - download all discovered files
echo [7] PR-7 (Participant List) - no discovered files (creates folder)
echo.
echo [8] Download ALL discovered files
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
curl -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css" && echo [SUCCESS] about.css || echo [FAILED] about.css
curl -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html" && echo [SUCCESS] about.html || echo [FAILED] about.html
curl -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css" && echo [SUCCESS] contact.css || echo [FAILED] contact.css
curl -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html" && echo [SUCCESS] contact.html || echo [FAILED] contact.html
curl -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css" && echo [SUCCESS] events.css || echo [FAILED] events.css
curl -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html" && echo [SUCCESS] events.html || echo [FAILED] events.html
curl -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css" && echo [SUCCESS] home.css || echo [FAILED] home.css
curl -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html" && echo [SUCCESS] home.html || echo [FAILED] home.html
echo.
echo PR-1 downloaded.
pause
goto menu

:pr2
echo.
echo PR-2 (Bootstrap) - no files were returned in the scan.
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
echo Folder created: PR-2(Bootstrap)
echo If you want files added to this option, paste their raw URLs into the script.
pause
goto menu

:pr3
echo.
echo Downloading PR-3 (Validation)...
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
curl -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [SUCCESS] event.html || echo [FAILED] event.html
curl -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [SUCCESS] script.js || echo [FAILED] script.js
curl -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [SUCCESS] style.css || echo [FAILED] style.css
echo.
echo PR-3 downloaded.
pause
goto menu

:pr4
echo.
echo PR-4 (Filter) - no files were returned in the scan.
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
echo Folder created: PR-4(Filter)
echo If you want files added to this option, paste their raw URLs into the script.
pause
goto menu

:pr5
echo.
echo PR-5 (Database) - no files were returned in the scan.
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
echo Folder created: PR-5(Database)
echo If you want files added to this option, paste their raw URLs into the script.
pause
goto menu

:pr6
echo.
echo Downloading PR-6 (CRUD)...
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
curl -L -o "PR-6(CRUD)\admin.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css" && echo [SUCCESS] admin.css || echo [FAILED] admin.css
curl -L -o "PR-6(CRUD)\admin.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js" && echo [SUCCESS] admin.js || echo [FAILED] admin.js
curl -L -o "PR-6(CRUD)\dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html" && echo [SUCCESS] dashboard.html || echo [FAILED] dashboard.html
curl -L -o "PR-6(CRUD)\login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html" && echo [SUCCESS] login.html || echo [FAILED] login.html
echo.
echo PR-6 downloaded.
pause
goto menu

:pr7
echo.
echo PR-7 (Participant List) - no files were returned in the scan.
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"
echo Folder created: PR-7(Participant List)
echo If you want files added to this option, paste their raw URLs into the script.
pause
goto menu

:download_all
echo.
echo Downloading ALL discovered files...
if not exist "PR-1(Static pages)" mkdir "PR-1(Static pages)"
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"

echo --- PR-1 files ---
curl -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css" && echo [OK] about.css || echo [SKIP] about.css
curl -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html" && echo [OK] about.html || echo [SKIP] about.html
curl -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css" && echo [OK] contact.css || echo [SKIP] contact.css
curl -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html" && echo [OK] contact.html || echo [SKIP] contact.html
curl -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css" && echo [OK] events.css || echo [SKIP] events.css
curl -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html" && echo [OK] events.html || echo [SKIP] events.html
curl -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css" && echo [OK] home.css || echo [SKIP] home.css
curl -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html" && echo [OK] home.html || echo [SKIP] home.html

echo --- PR-3 files ---
curl -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [OK] event.html || echo [SKIP] event.html
curl -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [OK] script.js || echo [SKIP] script.js
curl -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [OK] style.css || echo [SKIP] style.css

echo --- PR-6 files ---
curl -L -o "PR-6(CRUD)\admin.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css" && echo [OK] admin.css || echo [SKIP] admin.css
curl -L -o "PR-6(CRUD)\admin.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js" && echo [OK] admin.js || echo [SKIP] admin.js
curl -L -o "PR-6(CRUD)\dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html" && echo [OK] dashboard.html || echo [SKIP] dashboard.html
curl -L -o "PR-6(CRUD)\login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html" && echo [OK] login.html || echo [SKIP] login.html

echo.
echo All discovered files processed. For PR folders without discovered files, open the script and add raw URLs under the appropriate section.
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