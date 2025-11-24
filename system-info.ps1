Write-Host "=== System Information ===" -ForegroundColor Cyan

Write-Host "Hostname: $(hostname)"
Write-Host "User: $env:USERNAME"
Write-Host "Windows Version:"
Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" |
Select-Object ProductName, ReleaseId, CurrentBuild

Write-Host "`nIP Addresses:"
Get-NetIPAddress | Where-Object {$_.AddressFamily -eq "IPv4"} |
Select-Object IPAddress, InterfaceAlias

Write-Host "`nUptime:"
(Get-CimInstance Win32_OperatingSystem).LastBootUpTime
