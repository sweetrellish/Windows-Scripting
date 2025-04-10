@echo off
:: Display system boot time
echo Checking System Uptime...
systeminfo | find "System Boot Time"
pause
