@echo off
:: Define output file path (on desktop)
set OUTPUT_FILE=%USERPROFILE%\Desktop\System_Report.txt

:: Create header in the report
echo System Report - %DATE% %TIME% > "%OUTPUT_FILE%"
echo ------------------------------------ >> "%OUTPUT_FILE%"

:: Get current username, hostname, and domain
echo User: %USERNAME% >> "%OUTPUT_FILE%"
echo Computer Name: %COMPUTERNAME% >> "%OUTPUT_FILE%"
echo Domain: %USERDOMAIN% >> "%OUTPUT_FILE%"

:: Get IP configuration
echo IP Configuration: >> "%OUTPUT_FILE%"
ipconfig >> "%OUTPUT_FILE%"

:: Get system boot time
echo System Boot Time: >> "%OUTPUT_FILE%"
systeminfo | find "System Boot Time" >> "%OUTPUT_FILE%"

:: Finished message
echo Report saved to: %OUTPUT_FILE%
pause
