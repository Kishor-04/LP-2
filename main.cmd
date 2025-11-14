@echo off
title LP-2 File Downloader


:menu
cls
echo ========================================
echo    LP-2 Project File Downloader
echo ========================================
echo.
echo Select a project to download:
echo.
echo [1] PR-1 - Static Pages
echo [2] PR-2 - Bootstrap
echo [3] PR-3 - Validation
echo [4] PR-4 - Filter
echo [5] PR-5 - Database
echo [6] PR-6 - CRUD
echo [7] PR-7 - Participant List
echo.
echo [8] Download ALL Projects
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
echo ========================================
echo Downloading PR-1 - Static Pages...
echo ========================================
echo.
if not exist "PR-1(Static pages)" mkdir "PR-1(Static pages)"
curl -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/home.html" && echo [SUCCESS] home.html downloaded!
curl -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/home.css" && echo [SUCCESS] home.css downloaded!
curl -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/about.html" && echo [SUCCESS] about.html downloaded!
curl -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/about.css" && echo [SUCCESS] about.css downloaded!
curl -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/contact.html" && echo [SUCCESS] contact.html downloaded!
curl -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/contact.css" && echo [SUCCESS] contact.css downloaded!
curl -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/events.html" && echo [SUCCESS] events.html downloaded!
curl -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/events.css" && echo [SUCCESS] events.css downloaded!
echo.
echo ========================================
echo PR-1 Downloaded Successfully!
echo ========================================
goto done

:pr2
echo.
echo ========================================
echo Downloading PR-2 - Bootstrap...
echo ========================================
echo.
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
curl -L -o "PR-2(Bootstrap)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html" && echo [SUCCESS] events.html downloaded!
curl -L -o "PR-2(Bootstrap)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css" && echo [SUCCESS] events.css downloaded!
echo.
echo ========================================
echo PR-2 Downloaded Successfully!
echo ========================================
goto done

:pr3
echo.
echo ========================================
echo Downloading PR-3 - Validation...
echo ========================================
echo.
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
curl -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [SUCCESS] event.html downloaded!
curl -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [SUCCESS] style.css downloaded!
curl -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [SUCCESS] script.js downloaded!
echo.
echo ========================================
echo PR-3 Downloaded Successfully!
echo ========================================
goto done

:pr4
echo.
echo ========================================
echo Downloading PR-4 - Filter...
echo ========================================
echo.
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
curl -L -o "PR-4(Filter)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/event.html" && echo [SUCCESS] event.html downloaded!
curl -L -o "PR-4(Filter)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css" && echo [SUCCESS] style.css downloaded!
curl -L -o "PR-4(Filter)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js" && echo [SUCCESS] script.js downloaded!
echo.
echo ========================================
echo PR-4 Downloaded Successfully!
echo ========================================
goto done

:pr5
echo.
echo ========================================
echo Downloading PR-5 - Database...
echo ========================================
echo.
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
curl -L -o "PR-5(Database)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/event.html" && echo [SUCCESS] event.html downloaded!
curl -L -o "PR-5(Database)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css" && echo [SUCCESS] style.css downloaded!
curl -L -o "PR-5(Database)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js" && echo [SUCCESS] script.js downloaded!
curl -L -o "PR-5(Database)\server.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/server.js" && echo [SUCCESS] server.js downloaded!
echo.
echo ========================================
echo PR-5 Downloaded Successfully!
echo ========================================
goto done

:pr6
echo.
echo ========================================
echo Downloading PR-6 - CRUD...
echo ========================================
echo.
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
curl -L -o "PR-6(CRUD)\login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html" && echo [SUCCESS] login.html downloaded!
curl -L -o "PR-6(CRUD)\dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html" && echo [SUCCESS] dashboard.html downloaded!
curl -L -o "PR-6(CRUD)\admin.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css" && echo [SUCCESS] admin.css downloaded!
curl -L -o "PR-6(CRUD)\admin.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js" && echo [SUCCESS] admin.js downloaded!
echo.
echo ========================================
echo PR-6 Downloaded Successfully!
echo ========================================
goto done

:pr7
echo.
echo ========================================
echo Downloading PR-7 - Participant List...
echo ========================================
echo.
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"
curl -L -o "PR-7(Participant List)\participants.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.html" && echo [SUCCESS] participants.html downloaded!
curl -L -o "PR-7(Participant List)\participants.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.css" && echo [SUCCESS] participants.css downloaded!
curl -L -o "PR-7(Participant List)\participants.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.js" && echo [SUCCESS] participants.js downloaded!
curl -L -o "PR-7(Participant List)\participants.json" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.json" && echo [SUCCESS] participants.json downloaded!
echo.
echo ========================================
echo PR-7 Downloaded Successfully!
echo ========================================
goto done

:download_all
echo.
echo ========================================
echo Downloading ALL Projects...
echo ========================================
echo.

REM Create all directories
if not exist "PR-1(Static pages)" mkdir "PR-1(Static pages)"
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"

echo ----------------------------------------
echo Downloading PR-1 - Static Pages (8 files)...
echo ----------------------------------------
curl -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/home.html" && echo [SUCCESS] home.html
curl -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/home.css" && echo [SUCCESS] home.css
curl -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/about.html" && echo [SUCCESS] about.html
curl -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/about.css" && echo [SUCCESS] about.css
curl -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/contact.html" && echo [SUCCESS] contact.html
curl -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/contact.css" && echo [SUCCESS] contact.css
curl -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/events.html" && echo [SUCCESS] events.html
curl -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static pages)/events.css" && echo [SUCCESS] events.css

echo.
echo ----------------------------------------
echo Downloading PR-2 - Bootstrap (2 files)...
echo ----------------------------------------
curl -L -o "PR-2(Bootstrap)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html" && echo [SUCCESS] events.html
curl -L -o "PR-2(Bootstrap)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css" && echo [SUCCESS] events.css

echo.
echo ----------------------------------------
echo Downloading PR-3 - Validation (3 files)...
echo ----------------------------------------
curl -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [SUCCESS] event.html
curl -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [SUCCESS] style.css
curl -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [SUCCESS] script.js

echo.
echo ----------------------------------------
echo Downloading PR-4 - Filter (3 files)...
echo ----------------------------------------
curl -L -o "PR-4(Filter)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/event.html" && echo [SUCCESS] event.html
curl -L -o "PR-4(Filter)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css" && echo [SUCCESS] style.css
curl -L -o "PR-4(Filter)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js" && echo [SUCCESS] script.js

echo.
echo ----------------------------------------
echo Downloading PR-5 - Database (4 files)...
echo ----------------------------------------
curl -L -o "PR-5(Database)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/event.html" && echo [SUCCESS] event.html
curl -L -o "PR-5(Database)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css" && echo [SUCCESS] style.css
curl -L -o "PR-5(Database)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js" && echo [SUCCESS] script.js
curl -L -o "PR-5(Database)\server.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/server.js" && echo [SUCCESS] server.js

echo.
echo ----------------------------------------
echo Downloading PR-6 - CRUD (4 files)...
echo ----------------------------------------
curl -L -o "PR-6(CRUD)\login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html" && echo [SUCCESS] login.html
curl -L -o "PR-6(CRUD)\dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html" && echo [SUCCESS] dashboard.html
curl -L -o "PR-6(CRUD)\admin.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css" && echo [SUCCESS] admin.css
curl -L -o "PR-6(CRUD)\admin.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js" && echo [SUCCESS] admin.js

echo.
echo ----------------------------------------
echo Downloading PR-7 - Participant List (4 files)...
echo ----------------------------------------
curl -L -o "PR-7(Participant List)\participants.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.html" && echo [SUCCESS] participants.html
curl -L -o "PR-7(Participant List)\participants.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.css" && echo [SUCCESS] participants.css
curl -L -o "PR-7(Participant List)\participants.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.js" && echo [SUCCESS] participants.js
curl -L -o "PR-7(Participant List)\participants.json" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant List)/participants.json" && echo [SUCCESS] participants.json

echo.
echo ========================================
echo All Files Downloaded Successfully!
echo Total: 28 files downloaded
echo ========================================
goto done

:invalid
echo.
echo Invalid choice! Please select a valid option (0-8).
timeout /t 2 >nul
goto menu

:done
echo.
pause
goto menu

:exit
echo.
echo ========================================
echo Thank you for using LP-2 File Downloader!
echo ========================================
timeout /t 2 >nul
exit
