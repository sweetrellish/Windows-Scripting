@echo off
:: ==========================================
:: Simple HTTP Server
:: This script uses Python to start a simple HTTP server for serving files in the current directory.
:: ==========================================

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Exiting...
    pause
    exit /b
)

:: Start the HTTP server on port 8000
echo Starting simple HTTP server on port 8000...
python -m http.server 8000

pause
