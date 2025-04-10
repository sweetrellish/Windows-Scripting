# ==========================================
# Basic Port Scanning Tool
# This script checks the status of specific ports on a given IP address.
# It uses the Test-NetConnection cmdlet to check if the ports are open or closed.
# Note : Need to write out file to gather data
# ==========================================

$ip = "192.168.1.1"  # Replace with the target IP address
$ports = 80, 443, 8080  # Ports you want to scan

# Iterate through each port to check if it's open or closed
foreach ($port in $ports) {
    try {
        # Test the connection to the target IP and port
        $tcpConnection = Test-NetConnection -ComputerName $ip -Port $port
        if ($tcpConnection.TcpTestSucceeded) {
            Write-Host "Port $port is OPEN"
        } else {
            Write-Host "Port $port is CLOSED"
        }
    } catch {
        Write-Host "Failed to test Port $port"
    }
}


