# ==========================================
# Wi-Fi Network Scanner Script
# This script scans the available Wi-Fi networks in the area and displays details
# such as SSID, signal strength, and encryption type.
# ==========================================

# Use netsh to display available Wi-Fi networks with detailed information
netsh wlan show networks mode=bssid
