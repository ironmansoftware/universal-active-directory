New-UDPage -Url "/User-Recently-Modified" -Name "User Recently Modified" -Content {
$prvDate = ((Get-Date).AddDays(-30)).Date
$Users = Get-ADUser -Filter {whenChanged -ge $prvDate} -Properties whenChanged | Select Name, whenChanged | Sort-Object whenChanged

New-UDAlert -Text 'Users modified within the last 30 days.'

New-UDTable -Data $Users -ShowExport -Columns @(
    New-UDTableColumn -Property 'Name'
    New-UDTableColumn -Property 'whenChanged' -Render {
        New-UDDateTime -InputObject ($EventData.whenChanged)
    }
)
}