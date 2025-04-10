# ==========================================
# System Information Collection Script
# This script gathers various system info such as CPU, memory, disk space, and network adapter details.
# It's useful for troubleshooting or documenting system configurations.
# ==========================================

# Get basic system info (OS, architecture, etc.)
$sysInfo = Get-ComputerInfo
$sysInfo | Select-Object CsName, CsDomain, OsArchitecture, WindowsVersion

# Get CPU details (e.g., clock speed and number of cores)
$cpu = Get-WmiObject -Class Win32_Processor
$cpu | Select-Object Name, MaxClockSpeed, NumberOfCores

# Get memory details
$mem = Get-WmiObject -Class Win32_PhysicalMemory
$mem | Select-Object Capacity, Manufacturer

# Get disk details (size and free space)
$disk = Get-WmiObject -Class Win32_LogicalDisk
$disk | Select-Object DeviceID, Size, FreeSpace

# Get network adapter details (e.g., IP address)
$network = Get-WmiObject -Class Win32_NetworkAdapterConfiguration
$network | Select-Object Description, IPAddress

Pause
