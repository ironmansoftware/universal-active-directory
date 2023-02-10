$DaysInactive = 30
$time = (Get-Date).Adddays(-($DaysInactive))
Get-ADComputer -Filter {LastLogonTimeStamp -lt $time} -ResultPageSize 2000 -resultSetSize $null -Properties Name, OperatingSystem, SamAccountName, DistinguishedName | Select-Object Name, OperatingSystem, SamAccountName, DistinguishedName