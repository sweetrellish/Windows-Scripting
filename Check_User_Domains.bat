:: ------------------------------------------------
:: Script : Check_User_Domains.bat
:: Purpose : Collects a list of all user accounts on the computer, 
::          showing whether they are domain or local accounts.
::          Also logs profile folders and current user info. 
:: Usage : Double-click to run. No admin rights needed. 
:: Output : Saves results to a text file on the Desktop.
:: ------------------------------------------------

:: Prevent each command in the script from being displayed
@echo off 
:: Starts localization of environment changes - ensures variables don't leak outside the script
setlocal

:: Set the output file path to Desktop
set OUTPUT_FILE=%USERPROFILE%\Desktop\User_Account_Check.txt

:: Start writing to the file with a header

echo ---------------------------------------------------------------> "%OUTPUT_FILE%"
echo User Ccount Domain Check - %DATE% %TIME% >> "%OUTPUT_FILE%"
echo ---------------------------------------------------------------> "%OUTPUT_FILE%"
echo. >> "%OUTPUT_FILE%"

:: List all user accounts with domain and SID
echo Listing all user accounts (with domain info)... >> "%OUTPUT_FILE%"
wmic useraccount get name,domain,sid >> "%OUTPUT_FILE%"

echo. >> "%OUTPUT_FILE%"

:: Show folder names in C:\Users (hints at past logins or profiles)
echo Listing profiles found in C:\Users... >> "%OUTPUT_FILE%"
dir "C:\Users" /b >> "%OUTPUT_FILE%"

:: Show current user, domain, and computer name
echo Currently logged in user info... >> "%OUTPUT_FILE%"
echo User: %USERNAME% >> "%OUTPUT_FILE%"
echo Domain: %USERDOMAIN% >> "%OUTPUT_FILE%"
echo Computer Name: %COMPUTERNAME% >> "%OUTPUT_FILE%"

echo. >> "%OUTPUT_FILE%"

:: Wrap-up message
echo Script Completed. Output saved to "%OUTPUT_FILE%"

:: Pause so the user can see that it finished 
pause