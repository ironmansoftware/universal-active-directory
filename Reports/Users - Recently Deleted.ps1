
$prvDate = ((Get-Date).AddDays(-30)).Date

Get-ADObject -IncludeDeletedObjects -Filter {objectClass -eq "user" -and IsDeleted -eq $True -and whenChanged -ge $prvDate} -Properties samaccountname, distinguishedname, whencreated,whenchanged | select -Property samaccountname, distinguishedname, whencreated,whenchanged