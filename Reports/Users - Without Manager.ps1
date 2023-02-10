Get-ADUser -LDAPFilter "(!manager=*)" -Properties DisplayName, UserPrincipalName, DistinguishedName | ForEach-Object {
    [PSCustomObject]@{
        DisplayName = $_.DisplayName
        UserPrincipalName = $_.UserPrincipalName
        DistinguishedName = $_.DistinguishedName
    }
}