@echo off
:: ==========================================
:: Network Monitoring and Diagnostics Script
:: This script performs basic network diagnostics:
:: - Ping test to a popular site (google.com)
:: - Trace route to google.com
:: - DNS lookup for google.com
:: ==========================================

echo Testing Network Connectivity...

:: Ping google.com 10 times to check connection quality
ping -n 10 google.com

:: Trace the route to google.com to identify any network bottlenecks
tracert google.com

:: Perform DNS lookup to resolve google.com IP address
nslookup google.com

echo Network test complete. Press any key to exit.
pause >nul
