@echo off
:: ==========================================
:: SMB Version Detection
:: This script attempts to check for the SMB version running on a target system by querying the SMB service.
:: ==========================================

:: Define target IP address
set target_ip=192.168.1.100

echo Checking SMB version on %target_ip%...

:: Check for SMBv1
echo | set /p= | nc %target_ip% 445 >nul 2>&1
if %errorlevel%==0 (
    echo SMBv1 is enabled on %target_ip%.
) else (
    echo SMBv1 is not enabled.
)

:: Check for SMBv2/3
echo | set /p= | nc %target_ip% 445 -v >nul 2>&1
if %errorlevel%==0 (
    echo SMBv2/3 is enabled on %target_ip%.
) else (
    echo SMBv2/3 is not enabled.
)

echo Check complete.
pause
