param(
    [string]$Target = "outlook.office365.com"
)

Write-Host "=== Network Test ===" -ForegroundColor Yellow

Write-Host "`nPing test:"
ping $Target

Write-Host "`nPort 443 test:"
Test-NetConnection -ComputerName $Target -Port 443

Write-Host "`nDNS Resolution:"
Resolve-DnsName $Target -ErrorAction SilentlyContinue

Write-Host "`nLocal IP:"
(Get-NetIPAddress | Where-Object {$_.AddressFamily -eq "IPv4"}).IPAddress
