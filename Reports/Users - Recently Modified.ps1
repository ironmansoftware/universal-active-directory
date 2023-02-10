
$prvDate = ((Get-Date).AddDays(-30)).Date
Get-ADUser -Filter {whenChanged -ge $prvDate} -Properties whenChanged | Select Name, whenChanged | Sort-Object whenChanged