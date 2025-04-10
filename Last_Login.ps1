# Define output file path
$outputFile = "$env:USERPROFILE\Desktop\Last_Login_Times.txt"

# Get the last login time for all users and format it properly
Get-WmiObject Win32_NetworkLoginProfile |
    Select-Object Name, LastLogon |
    Sort-Object LastLogon -Descending |
    ForEach-Object {
        $lastLogonTime = [Management.ManagementDateTimeConverter]::ToDateTime($_.LastLogon)
        $_ | Select-Object Name, @{Name="LastLogon";Expression={$lastLogonTime}}
    } |
    Format-Table -Property Name, LastLogon -AutoSize |
    Out-File -FilePath $outputFile

# Notify user of the saved file
Write-Host "Report saved to: $outputFile" -ForegroundColor Green
