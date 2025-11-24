Write-Host "=== Installed Programs ===" -ForegroundColor Magenta

Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object DisplayName, DisplayVersion, Publisher |
Where-Object { $_.DisplayName -ne $null } |
Sort-Object DisplayName
