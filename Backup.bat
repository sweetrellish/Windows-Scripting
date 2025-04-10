@echo off
:: ==========================================
:: Automated Backup Script
:: This script creates a backup of important documents.
:: It uses the xcopy command to copy files from one location to another.
:: ==========================================

echo Backing up important files...

:: Use xcopy to copy all files and directories from "Documents" to a backup location.
:: /E - Copy directories and subdirectories, including empty ones.
:: /H - Copy hidden and system files.
:: /C - Continue copying even if errors occur.
:: /I - Assume destination is a directory if copying more than one file.
xcopy "C:\Users\YourUsername\Documents" "D:\Backup\Documents" /E /H /C /I

echo Backup complete. Press any key to exit.
pause >nul
