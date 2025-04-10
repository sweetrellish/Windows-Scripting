# ==========================================
# Automated Security Patch Check Script
# This script checks the Windows Update log for security-related updates.
# It filters updates with the word "Security" in the log for review.
# ==========================================

# Query the Windows Update log for security-related entries
Get-WindowsUpdateLog | Select-String "Security" | Format-Table LineNumber, Line
