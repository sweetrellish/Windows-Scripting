<# 
    Script : Check-UserDomains.ps1
    Purpose : Identifies local vs. domain accounts on the system, 
        shows user profiles, and logs current user context. 
    Usage : Run by right-clicking and selecting "Run with Powershell"
    Permissions : No admin rights needed. 
    Output : Saves report to a text file on the Desktop
    
#>

#Define output file path
$outputFile = "$env:USERPROFILE\Desktop\User_Account_Check.txt"

#Create file header
Add-Content -Path $outputFile -Value ("-" * 60)
Add-Content -Path $outputFile -Value "User Account Domain Check - $(Get-Date)"
Add-Content -Path $outputFile -Value ("-" * 60)
Add-Content

#List all user accounts
Add-Content -Path $outputFile -Value "User Accounts:"
Get-ChildItem -Path "C:\Users" - Directory | 
    Select-Object Name | 
    Format-Table -AutoSize |
    Out-String |
    Add-Content -Path $outputFile

Add-Content -Path $outputFile -Value ""

#Check current user context
Add-Content -Path $outputFile -Value "Current User Context:"
Add-Content -Path $outputFile -Value "User:  $env:USERNAME"
Add-Content -Path $outputFile -Value "Domain: $env:USERDOMAIN"
Add-Content -Path $outputFile -Value "Computer: $env:COMPUTERNAME"
Add-Content -Path $outputFile -Value ""

Add-Content -Path $outputFile -Value "Script completed successfully."
Add-Content -Path $outputFile -Value "Output saved to: $outputFile"

#Display completion message
Write-Host "Script completed successfully. Output saved to: $outputFile" -ForegroundColor Green
Pause
