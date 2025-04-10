# ==========================================
# HTTP Directory Bruteforce Script
# This script performs a basic dictionary attack to discover hidden directories on a target web server.
# ==========================================

# Define the target URL and list of common directories
$targetURL = "http://192.168.1.100/"
$directories = @("admin", "test", "login", "backup", "config", "hidden", "uploads")

# Test each directory by appending it to the base URL
foreach ($dir in $directories) {
    $url = $targetURL + $dir
    $response = Invoke-WebRequest -Uri $url -Method GET -UseBasicP
    if ($response.StatusCode -eq 200) {
        Write-Host "Directory found: $url"
    }
    else {
        Write-Host "Directory not found: $url"
    }
}
