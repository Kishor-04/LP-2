@echo off
title LP-2 File Downloader


:menu
cls
echo ========================================
echo    LP-2 Assignment File Downloader
echo ========================================
echo.
echo Select an assignment to download:
echo.
echo [1] PR-1 - Static Pages (4 pages)
echo [2] PR-2 - Bootstrap (1 page)
echo [3] PR-3 - Validation
echo [4] PR-4 - Filter
echo [5] PR-5 - Database
echo [6] PR-6 - CRUD
echo [7] PR-7 - Participant List
echo.
echo [9] Download ALL Assignments
echo [0] Exit
echo.
echo ========================================
set /p choice="Enter your choice (0-9): "

if "%choice%"=="1" goto pr1
if "%choice%"=="2" goto pr2
if "%choice%"=="3" goto pr3
if "%choice%"=="4" goto pr4
if "%choice%"=="5" goto pr5
if "%choice%"=="6" goto pr6
if "%choice%"=="7" goto pr7
if "%choice%"=="9" goto download_all
if "%choice%"=="0" goto exit
goto invalid

:pr1
echo.
echo ========================================
echo Downloading PR-1 - Static Pages...
echo ========================================
if not exist "PR-1(Static pages)" mkdir "PR-1(Static pages)"
echo.
echo [1/8] Downloading home.html...
curl -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html" && echo [SUCCESS] home.html downloaded!
echo [2/8] Downloading home.css...
curl -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css" && echo [SUCCESS] home.css downloaded!
echo [3/8] Downloading about.html...
curl -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html" && echo [SUCCESS] about.html downloaded!
echo [4/8] Downloading about.css...
curl -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css" && echo [SUCCESS] about.css downloaded!
echo [5/8] Downloading contact.html...
curl -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html" && echo [SUCCESS] contact.html downloaded!
echo [6/8] Downloading contact.css...
curl -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css" && echo [SUCCESS] contact.css downloaded!
echo [7/8] Downloading events.html...
curl -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html" && echo [SUCCESS] events.html downloaded!
echo [8/8] Downloading events.css...
curl -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css" && echo [SUCCESS] events.css downloaded!
echo.
echo ========================================
echo PR-1 Downloaded Successfully! (8 files)
echo ========================================
goto done

:pr2
echo.
echo ========================================
echo Downloading PR-2 - Bootstrap...
echo ========================================
if not exist "PR-2(Bootstrap)" mkdir "PR-2(Bootstrap)"
echo.
echo [1/2] Downloading events.html...
curl -L -o "PR-2(Bootstrap)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html" && echo [SUCCESS] events.html downloaded!
echo [2/2] Downloading events.css...
curl -L -o "PR-2(Bootstrap)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css" && echo [SUCCESS] events.css downloaded!
echo.
echo ========================================
echo PR-2 Downloaded Successfully! (2 files)
echo ========================================
goto done

:pr3
echo.
echo ========================================
echo Downloading PR-3 - Validation...
echo ========================================
if not exist "PR-3(Validation)" mkdir "PR-3(Validation)"
echo.
echo [1/3] Downloading event.html...
curl -L -o "PR-3(Validation)\event.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html" && echo [SUCCESS] event.html downloaded!
echo [2/3] Downloading script.js...
curl -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [SUCCESS] script.js downloaded!
echo [3/3] Downloading style.css...
curl -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [SUCCESS] style.css downloaded!
echo.
echo ========================================
echo PR-3 Downloaded Successfully! (3 files)
echo ========================================
goto done

:pr4
echo.
echo ========================================
echo Downloading PR-4 - Filter...
echo ========================================
if not exist "PR-4(Filter)" mkdir "PR-4(Filter)"
echo.
echo [1/3] Downloading index.html...
curl -L -o "PR-4(Filter)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/index.html" && echo [SUCCESS] index.html downloaded!
echo [2/3] Downloading script.js...
curl -L -o "PR-4(Filter)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js" && echo [SUCCESS] script.js downloaded!
echo [3/3] Downloading style.css...
curl -L -o "PR-4(Filter)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css" && echo [SUCCESS] style.css downloaded!
echo.
echo ========================================
echo PR-4 Downloaded Successfully! (3 files)
echo ========================================
goto done

:pr5
echo.
echo ========================================
echo Downloading PR-5 - Database...
echo ========================================
if not exist "PR-5(Database)" mkdir "PR-5(Database)"
echo.
echo [1/3] Downloading index.html...
curl -L -o "PR-5(Database)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/index.html" && echo [SUCCESS] index.html downloaded!
echo [2/3] Downloading script.js...
curl -L -o "PR-5(Database)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js" && echo [SUCCESS] script.js downloaded!
echo [3/3] Downloading style.css...
curl -L -o "PR-5(Database)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css" && echo [SUCCESS] style.css downloaded!
echo.
echo ========================================
echo PR-5 Downloaded Successfully! (3 files)
echo ========================================
goto done

:pr6
echo.
echo ========================================
echo Downloading PR-6 - CRUD...
echo ========================================
if not exist "PR-6(CRUD)" mkdir "PR-6(CRUD)"
echo.
echo [1/3] Downloading index.html...
curl -L -o "PR-6(CRUD)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/index.html" && echo [SUCCESS] index.html downloaded!
echo [2/3] Downloading script.js...
curl -L -o "PR-6(CRUD)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/script.js" && echo [SUCCESS] script.js downloaded!
echo [3/3] Downloading style.css...
curl -L -o "PR-6(CRUD)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/style.css" && echo [SUCCESS] style.css downloaded!
echo.
echo ========================================
echo PR-6 Downloaded Successfully! (3 files)
echo ========================================
goto done

:pr7
echo.
echo ========================================
echo Downloading PR-7 - Participant List...
echo ========================================
if not exist "PR-7(Participant List)" mkdir "PR-7(Participant List)"
echo.
echo [1/3] Downloading index.html...
curl -L -o "PR-7(Participant List)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/index.html" && echo [SUCCESS] index.html downloaded!
echo [2/3] Downloading script.js...
curl -L -o "PR-7(Participant List)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/script.js" && echo [SUCCESS] script.js downloaded!
echo [3/3] Downloading style.css...
curl -L -o "PR-7(Participant List)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/style.css" && echo [SUCCESS] style.css downloaded!
echo.
echo ========================================
echo PR-7 Downloaded Successfully! (3 files)
echo ========================================
goto done

:download_all
echo.
echo ========================================
echo Downloading ALL Assignment Files...
echo ========================================
echo.

REM Create directories
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
curl -L -o "PR-1(Static pages)\home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html" && echo [SUCCESS] home.html
curl -L -o "PR-1(Static pages)\home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css" && echo [SUCCESS] home.css
curl -L -o "PR-1(Static pages)\about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html" && echo [SUCCESS] about.html
curl -L -o "PR-1(Static pages)\about.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css" && echo [SUCCESS] about.css
curl -L -o "PR-1(Static pages)\contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html" && echo [SUCCESS] contact.html
curl -L -o "PR-1(Static pages)\contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css" && echo [SUCCESS] contact.css
curl -L -o "PR-1(Static pages)\events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html" && echo [SUCCESS] events.html
curl -L -o "PR-1(Static pages)\events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css" && echo [SUCCESS] events.css

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
curl -L -o "PR-3(Validation)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js" && echo [SUCCESS] script.js
curl -L -o "PR-3(Validation)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css" && echo [SUCCESS] style.css

echo.
echo ----------------------------------------
echo Downloading PR-4 - Filter (3 files)...
echo ----------------------------------------
curl -L -o "PR-4(Filter)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/index.html" && echo [SUCCESS] index.html
curl -L -o "PR-4(Filter)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js" && echo [SUCCESS] script.js
curl -L -o "PR-4(Filter)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css" && echo [SUCCESS] style.css

echo.
echo ----------------------------------------
echo Downloading PR-5 - Database (3 files)...
echo ----------------------------------------
curl -L -o "PR-5(Database)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/index.html" && echo [SUCCESS] index.html
curl -L -o "PR-5(Database)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js" && echo [SUCCESS] script.js
curl -L -o "PR-5(Database)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css" && echo [SUCCESS] style.css

echo.
echo ----------------------------------------
echo Downloading PR-6 - CRUD (3 files)...
echo ----------------------------------------
curl -L -o "PR-6(CRUD)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/index.html" && echo [SUCCESS] index.html
curl -L -o "PR-6(CRUD)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/script.js" && echo [SUCCESS] script.js
curl -L -o "PR-6(CRUD)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/style.css" && echo [SUCCESS] style.css

echo.
echo ----------------------------------------
echo Downloading PR-7 - Participant List (3 files)...
echo ----------------------------------------
curl -L -o "PR-7(Participant List)\index.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/index.html" && echo [SUCCESS] index.html
curl -L -o "PR-7(Participant List)\script.js" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/script.js" && echo [SUCCESS] script.js
curl -L -o "PR-7(Participant List)\style.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/style.css" && echo [SUCCESS] style.css

echo.
echo ========================================
echo All Files Downloaded Successfully!
echo Total: 25 files downloaded
echo ========================================
goto done

:invalid
echo.
echo Invalid choice! Please select a valid option (0-9).
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
