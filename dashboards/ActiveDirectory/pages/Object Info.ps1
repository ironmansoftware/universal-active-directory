New-UDPage -Url "/Object-Info/:guid" -Name "Object Info" -Content {
New-UDTypography "Object - $(Get-ADUser -Identity $Guid)" -Variant h5
New-UDHtml -Markup "<hr/>"

$MatchingRoles = $Roles | Where-Object { $_ -in @("Administrator", "AD Admin") }
if ($MatchingRoles.Length -gt 0) {
  New-UDTypography "Double-click the values to edit them. Navigating away or pressing enter will save them to Active Directory."
  New-UDDataGrid -LoadRows {
    $Object = Get-ADObject -Identity $Guid -Properties *
    $Data = $Object.PSObject.Properties | ForEach-Object {
      [PSCustomObject]@{
        Name = $_.Name
        Value = if ($_.Value) { $_.Value.ToString() } else { "" }
      }
    }

    @{
        rows = $Data 
        rowCount = $Data.Length
    }
  } -Columns @(
    @{ field = "name"; headerName = 'Name'; flex = 0.5}
    @{ field = "value"; headerName = 'Value'; flex = 0.5; editable = $true }
  ) -OnEdit {
    try 
    {
      $Value = @{}
      $Value[$EventData.NewRow.Name] = $EventData.NewRow.Value
      Set-ADObject -Identity $Guid -Replace $Value
    } catch {
      $EventData.OldRow.Value
      throw
    }
  }
} else {
  $Object = Get-ADObject -Identity $Guid -Properties *
  $Data = $Object.PSObject.Properties | ForEach-Object {
    [PSCustomObject]@{
      Name = $_.Name
      Value = if ($_.Value) { $_.Value.ToString() } else { "" }
    }
  }
  New-UDTable -Data $Data
}
} -Icon 'User'