
$prvDate = ((Get-Date).AddDays(-30)).Date
Get-ADUser -Filter {whenCreated -ge $prvDate} -Properties whenCreated | Select Name, whenCreated | Sort-Object whenCreated
