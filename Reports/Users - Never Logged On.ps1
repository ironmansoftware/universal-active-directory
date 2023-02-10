Get-ADUser -Filter { -not (lastlogontime -like '*') } -Properties Name,SID,whenCreated | ForEach-Object {
    [PSCustomObject]@{
        Name = $_.Name 
        SID = $_.SID
        WhenCreated = $_.whenCreated
    }
}