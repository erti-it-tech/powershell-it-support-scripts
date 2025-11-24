param(
    [Parameter(Mandatory = $true)]
    [string]$SamAccountName,

    [Parameter(Mandatory = $true)]
    [string]$NewPassword
)

Import-Module ActiveDirectory

Write-Host "Resetting password for user: $SamAccountName"

$SecurePwd = ConvertTo-SecureString $NewPassword -AsPlainText -Force
Set-ADAccountPassword -Identity $SamAccountName -NewPassword $SecurePwd -Reset
Set-ADUser -Identity $SamAccountName -ChangePasswordAtLogon $true

Write-Host "Password reset completed."
