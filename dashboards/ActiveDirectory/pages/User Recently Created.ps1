New-UDPage -Url "/User-Recently-Created" -Name "User Recently Created" -Content {
$prvDate = ((Get-Date).AddDays(-30)).Date
$Users = Get-ADUser -Filter {whenCreated -ge $prvDate} -Properties whenCreated | Select Name, whenCreated | Sort-Object whenCreated

New-UDAlert -Text 'Users created within the last 30 days.'

New-UDTable -Data $Users -ShowExport -Columns @(
    New-UDTableColumn -Property 'Name'
    New-UDTableColumn -Property 'whenCreated' -Title 'Created' -Render {
        New-UDDateTime -InputObject ($EventData.whenCreated)
    }
)
}