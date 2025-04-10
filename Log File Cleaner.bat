@echo off
:: ==========================================
:: Log File Cleaner Script
:: This script deletes log files that are older than a specified number of days.
:: It uses the 'forfiles' command to search for files based on age.
:: ==========================================

echo Cleaning old log files...

:: Set the folder where logs are stored
set logFolder="C:\Logs"
:: Set the number of days to keep files
set days=30

:: Delete log files older than 30 days
forfiles /p %logFolder% /s /m *.log /D -%days% /C "cmd /c del @path"

echo Cleanup complete. Press any key to exit.
pause >nul
