@echo off
:: ==========================================
:: DNS Lookup Tool
:: This script resolves a domain to its associated IP address.
:: ==========================================

:: Define the target domain
set domain=example.com

echo Resolving DNS for %domain%...

:: Perform DNS lookup and show the result
nslookup %domain%

echo DNS lookup complete.
pause
