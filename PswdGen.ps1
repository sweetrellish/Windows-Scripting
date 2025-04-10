# ==========================================
# Password Generator Script
# This script generates a random, strong password of a specified length.
# It uses a combination of uppercase, lowercase, numbers, and special characters.
# ==========================================

# Function to generate a strong random password
function Generate-Password {
    $length = 16  # Specify the length of the password
    $charSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"  # Characters used in the password
    $password = -join ((1..$length) | ForEach-Object { $charSet | Get-Random })  # Generate the password by selecting random characters
    return $password
}

# Call the function and display the generated password
$newPassword = Generate-Password
Write-Host "Generated Password: $newPassword"

Pause