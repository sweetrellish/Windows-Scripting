@echo off
:: Show IP configuration details
echo Checking Network Configuration...
ipconfig /all

:: Ping a website to check internet connection
echo Testing Internet Connection...
ping google.com -n 2

:: Test DNS resolution
echo Testing DNS Resolution...
nslookup microsoft.com
pause

pause
