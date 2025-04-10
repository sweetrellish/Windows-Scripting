
:: ------------------------------------------------------------
:: Script: Check_User_Domains.bat
:: Purpose: Collects a list of all user accounts on the computer,
::          showing whether they are domain or local accounts.
::          Also logs profile folders and current user info.
:: Usage:   Double-click to run. No admin rights needed.
:: Output:  Saves results to a text file on the Desktop.
:: ------------------------------------------------------------

:: Prevents each command in the script from being displayed
@echo off

:: Starts localization of environment changes — ensures variables don't leak outside the script
setlocal

:: Set the output file path to a file on the current user's desktop
set OUTPUT_FILE=%USERPROFILE%\Desktop\User_Account_Check.txt

:: Start writing header to the output file
echo -------------------------------------------- > "%OUTPUT_FILE%"
echo User Account Domain Check - %DATE% %TIME% >> "%OUTPUT_FILE%"
echo -------------------------------------------- >> "%OUTPUT_FILE%"
echo. >> "%OUTPUT_FILE%"

:: List all user accounts on the system with domain and SID info
echo Listing all user accounts (with domain info)... >> "%OUTPUT_FILE%"
wmic useraccount get name,domain,sid >> "%OUTPUT_FILE%"

echo. >> "%OUTPUT_FILE%"

:: Show user profile folders in C:\Users — useful to see which users have logged in before
echo Listing profiles found in C:\Users... >> "%OUTPUT_FILE%"
dir "C:\Users" /b >> "%OUTPUT_FILE%"

echo. >> "%OUTPUT_FILE%"

:: Log current user's username, domain, and machine name
echo Currently logged in user info... >> "%OUTPUT_FILE%"
echo User: %USERNAME% >> "%OUTPUT_FILE%"
echo Domain: %USERDOMAIN% >> "%OUTPUT_FILE%"
echo Computer Name: %COMPUTERNAME% >> "%OUTPUT_FILE%"

echo. >> "%OUTPUT_FILE%"

:: Final message to indicate script finished
echo Script completed. Output saved to: %OUTPUT_FILE%

:: Keep the window open until the user presses a key
pause
