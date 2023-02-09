New-UDPage -Url "/Users-without-Managers" -Name "Users without Managers" -Content {
New-UDTypography -Content {
    New-UDStack -Direction row -Content {
        New-UDIcon -Icon 'Table' -Style @{
            marginRight ="4px"
            verticalAlign ='center'
        }
        'Users without Managers'
    } 
} -Variant 'h3'

$Users = Get-ADUser -LDAPFilter "(!manager=*)" -Properties *
New-UDTable -Data $Users -Columns @(
    New-UDTableColumn -Property 'DisplayName'
    New-UDTableColumn -Property 'UserPrincipalName'
    New-UDTableColumn -Property 'DistinguishedName'
) -ShowExport -ShowPagination
}