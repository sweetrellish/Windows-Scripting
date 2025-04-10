<#
    Script: Check-UserDomains.ps1
    Purpose: Identifies local vs domain accounts on the system,
             shows user profiles, and logs current user context.
    Usage: Run by right-clicking and selecting "Run with PowerShell"
    Permissions: No admin rights needed.
    Output: Saves report to a text file on the Desktop.
#>

# Define output file
$outputFile = "$env:USERPROFILE\Desktop\User_Account_Check.txt"

# Create file header
Add-Content -Path $outputFile -Value ("-" * 60)
Add-Content -Path $outputFile -Value "User Account Domain Check - $(Get-Date)"
Add-Content -Path $outputFile -Value ("-" * 60)
Add-Content -Path $outputFile -Value ""

# List all user accounts (local + domain)
Add-Content -Path $outputFile -Value "All user accounts on this machine:"
Get-WmiObject -Class Win32_UserAccount | 
    Select-Object Name, Domain, SID |
    Format-Table -AutoSize | Out-String | 
    Add-Content -Path $outputFile

Add-Content -Path $outputFile -Value ""

# List all folders in C:\Users
Add-Content -Path $outputFile -Value "User profile folders in C:\Users:"
Get-ChildItem -Path "C:\Users" -Directory |
    Select-Object Name |
    Format-Table -AutoSize | Out-String |
    Add-Content -Path $outputFile

Add-Content -Path $outputFile -Value ""

# Current user context
Add-Content -Path $outputFile -Value "Currently logged in user info:"
Add-Content -Path $outputFile -Value "User:       $env:USERNAME"
Add-Content -Path $outputFile -Value "Domain:     $env:USERDOMAIN"
Add-Content -Path $outputFile -Value "Computer:   $env:COMPUTERNAME"

Add-Content -Path $outputFile -Value ""
Add-Content -Path $outputFile -Value "Script completed successfully."
Add-Content -Path $outputFile -Value "Output saved to: $outputFile"

# Display completion message in console
Write-Host "`nDone! Report saved to: $outputFile" -ForegroundColor Green
Pause
