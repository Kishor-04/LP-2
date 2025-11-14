@echo off
setlocal enabledelayedexpansion
title LP-2 File Downloader

REM Move to script directory
cd /d "%~dp0"

REM Check curl
where curl >nul 2>&1 || (
    echo ERROR: curl not installed.
    pause
    exit /b
)

:: -----------------------------
::   Function to download file
:: -----------------------------
:download
REM %1 = folder, %2 = filename, %3 = URL
if not exist "%~1" mkdir "%~1"
curl -s -L -o "%~1\%~2" "%~3" >nul 2>&1 && (
    echo [OK] %~2
) || (
    echo [FAIL] %~2
)
exit /b

:: -----------------------------
::   MENU
:: -----------------------------
:menu
cls
echo ========================================
echo      LP-2 Assignment Downloader
echo ========================================
echo.
echo [1] PR-1  Static Pages
echo [2] PR-2  Bootstrap
echo [3] PR-3  Validation
echo [4] PR-4  Filter
echo [5] PR-5  Database
echo [6] PR-6  CRUD
echo [7] PR-7  Participant List
echo ----------------------------------------
echo [8] Download ALL
echo [0] Exit
echo ========================================
set /p op="Enter choice: "

if %op%==0 exit /b
if %op%==1 goto pr1
if %op%==2 goto pr2
if %op%==3 goto pr3
if %op%==4 goto pr4
if %op%==5 goto pr5
if %op%==6 goto pr6
if %op%==7 goto pr7
if %op%==8 goto all
goto menu

:: -----------------------------
:: PR-1
:: -----------------------------
:pr1
echo Downloading PR-1 (Static pages)...
set folder=PR-1(Static pages)
call :download "%folder%" "about.css"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.css"
call :download "%folder%" "about.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/about.html"
call :download "%folder%" "contact.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.css"
call :download "%folder%" "contact.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/contact.html"
call :download "%folder%" "events.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.css"
call :download "%folder%" "events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/events.html"
call :download "%folder%" "home.css" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.css"
call :download "%folder%" "home.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-1(Static%%20pages)/home.html"
pause
goto menu

:: -----------------------------
:: PR-2
:: -----------------------------
:pr2
echo Downloading PR-2 (Bootstrap)...
set folder=PR-2(Bootstrap)
call :download "%folder%" "events.css"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.css"
call :download "%folder%" "events.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-2(Bootstrap)/events.html"
pause
goto menu

:: -----------------------------
:: PR-3
:: -----------------------------
:pr3
echo Downloading PR-3 (Validation)...
set folder=PR-3(Validation)
call :download "%folder%" "event.html"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/event.html"
call :download "%folder%" "script.js"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/script.js"
call :download "%folder%" "style.css"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-3(Validation)/style.css"
pause
goto menu

:: -----------------------------
:: PR-4
:: -----------------------------
:pr4
echo Downloading PR-4 (Filter)...
set folder=PR-4(Filter)
call :download "%folder%" "event.html"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/event.html"
call :download "%folder%" "script.js"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/script.js"
call :download "%folder%" "style.css"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-4(Filter)/style.css"
pause
goto menu

:: -----------------------------
:: PR-5
:: -----------------------------
:pr5
echo Downloading PR-5 (Database)...
set folder=PR-5(Database)
call :download "%folder%" "event.html"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/event.html"
call :download "%folder%" "script.js"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/script.js"
call :download "%folder%" "server.js"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/server.js"
call :download "%folder%" "style.css"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-5(Database)/style.css"
pause
goto menu

:: -----------------------------
:: PR-6
:: -----------------------------
:pr6
echo Downloading PR-6 (CRUD)...
set folder=PR-6(CRUD)
call :download "%folder%" "admin.css"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.css"
call :download "%folder%" "admin.js"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/admin.js"
call :download "%folder%" "dashboard.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/dashboard.html"
call :download "%folder%" "login.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-6(CRUD)/login.html"
pause
goto menu

:: -----------------------------
:: PR-7
:: -----------------------------
:pr7
echo Downloading PR-7 (Participant List)...
set folder=PR-7(Participant List)
call :download "%folder%" "participants.css"  "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.css"
call :download "%folder%" "participants.html" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.html"
call :download "%folder%" "participants.js"   "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.js"
call :download "%folder%" "participants.json" "https://raw.githubusercontent.com/Kishor-04/LP-2/main/PR-7(Participant%%20List)/participants.json"
pause
goto menu

:: -----------------------------
:: Download ALL
:: -----------------------------
:all
call :pr1
call :pr2
call :pr3
call :pr4
call :pr5
call :pr6
call :pr7
pause
goto menu
