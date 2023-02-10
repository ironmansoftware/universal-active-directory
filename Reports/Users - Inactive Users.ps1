
$When = ((Get-Date).AddDays(-30)).Date
Get-ADUser -Filter {LastLogonDate -lt $When} -Properties * | select-object samaccountname,DistinguishedName,LastLogonDate
