# ==========================================
# Automated Virus Scan Script
# This script starts a quick scan using Windows Defender's built-in scanning tool.
# It can be used to regularly check for viruses and malware.
# ==========================================

# Start a quick scan with Windows Defender
Start-MpScan -ScanType QuickScan

Pause