
$Navigation = @(
    New-UDListItem -Label "Group Membership" -OnClick { Invoke-UDRedirect '/Groups' }
    New-UDListItem -Label "Reset Password" -OnClick { Invoke-UDRedirect '/Reset-Password' }
    New-UDListItem -Label "Restore Deleted User" -OnClick { Invoke-UDRedirect '/Restore-Deleted-User' }
    New-UDListItem -Label "Object Search" -OnClick { Invoke-UDRedirect '/Object-Search' }
)

New-UDDashboard -Title "Active Directory Tools" -Pages @(
  Get-UDPage -Name "Group Membership"
  Get-UDPage -Name "Object Info"
  Get-UDPage -Name "Object Search"
  Get-UDPage -Name "Reset Password"
  Get-UDPage -Name "Restore Deleted User"
) -Navigation $Navigation