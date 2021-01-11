#Variables
$disabled_users_list = Import-Csv 'X:\IT\DUL\disabledusers.csv'

#Write sentence for each user.
foreach ($user in $disabled_users_list) {
    Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq $user.SamAccountName } | Remove-CimInstance
}