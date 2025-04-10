# ==========================================
# Subdomain Enumeration Script
# This script tries to identify subdomains of a target domain.
# It uses DNS resolution to check for common subdomains.
# ==========================================

# Define the target domain and list of common subdomains
$domain = "example.com"
$subdomains = @("www", "ftp", "mail", "admin", "dev", "test", "staging")

# Check if each subdomain resolves to an IP address
foreach ($subdomain in $subdomains) {
    $fullDomain = "$subdomain.$domain"
    try {
        $ip = [System.Net.Dns]::GetHostAddresses($fullDomain)
        Write-Host "Subdomain found: $fullDomain ($ip)"
    } catch {
        Write-Host "No subdomain found: $fullDomain"
    }
}
