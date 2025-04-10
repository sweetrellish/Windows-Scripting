# ==========================================
# Port Scanning Tool
# This script scans a specified range of ports on a target IP address.
# ==========================================

# Set target IP address and port range
$targetIP = "192.168.1.100"
$ports = 1..1024  # Example: scan ports 1-1024

# Perform a TCP connection test on each port
foreach ($port in $ports) {
    try {
        $connectionTest = Test-NetConnection -ComputerName $targetIP -Port $port
        if ($connectionTest.TcpTestSucceeded) {
            Write-Host "Port $port is OPEN"
        }
    } catch {
        Write-Host "Failed to test Port $port"
    }
}
