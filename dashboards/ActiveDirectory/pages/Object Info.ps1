
New-UDTypography "Object - $(Get-ADUser -Identity $Guid)" -Variant h5
New-UDHtml -Markup "<hr/>"

New-UDDataGrid -LoadRows {
  $Object = Get-ADObject -Identity $Guid -Properties *
  $Data = $Object.PSObject.Properties | ForEach-Object {
    [PSCustomObject]@{
      Name  = $_.Name
      Value = if ($_.Value) { $_.Value.ToString() } else { "" }
    }
  }

  @{
    rows     = $Data 
    rowCount = $Data.Length
  }
} -Columns @(
  @{ field = "name"; headerName = 'Name'; flex = 0.5 }
  @{ field = "value"; headerName = 'Value'; flex = 0.5; editable = $true }
) -OnEdit {
  try {
    $Value = @{}
    $Value[$EventData.NewRow.Name] = $EventData.NewRow.Value
    Set-ADObject -Identity $Guid -Replace $Value
  }
  catch {
    $EventData.OldRow.Value
    throw
  }

}
