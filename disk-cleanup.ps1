Write-Host "=== Disk Cleanup ===" -ForegroundColor Green

# Temp folder (user)
$TempPath = $env:TEMP
Write-Host "Cleaning $TempPath"
Remove-Item "$TempPath\*" -Recurse -Force -ErrorAction SilentlyContinue

# Windows Temp
$WinTemp = "C:\Windows\Temp"
Write-Host "Cleaning $WinTemp"
Remove-Item "$WinTemp\*" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Cleanup done!"
