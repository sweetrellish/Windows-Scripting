# ==========================================
# Network Enumeration & Host Discovery Script
# This script uses the Test-Connection cmdlet to perform a ping sweep and find active hosts.
# ==========================================

# Define the network subnet (e.g., 192.168.1.0/24)
$subnet = "192.168.1"

# Perform a ping sweep across the subnet to identify live hosts
1..254 | ForEach-Object {
    $ip = "$subnet.$_"
    $pingResult = Test-Connection -ComputerName $ip -Count 1 -Quiet
    if ($pingResult) {
        Write-Host "$ip is LIVE"
    }
}
