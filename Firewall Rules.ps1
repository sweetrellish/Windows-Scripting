# ==========================================
# Firewall Rules Automation Script
# This script adds or removes firewall rules for specific ports or applications.
# Useful for automating the process of securing a system or managing network traffic.
# ==========================================

# Add a new firewall rule to allow traffic on port 8080
New-NetFirewallRule -DisplayName "Allow 8080 TCP" -Direction Inbound -Protocol TCP -LocalPort 8080 -Action Allow

# Remove an existing firewall rule (by name)
Remove-NetFirewallRule -DisplayName "Allow 8080 TCP"
