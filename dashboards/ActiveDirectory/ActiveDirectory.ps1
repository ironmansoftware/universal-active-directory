New-UDDashboard -Title "Active Directory Tools" -Pages @(
  Get-UDPage -Name "Group Membership"
  Get-UDPage -Name "Object Info"
  Get-UDPage -Name "Object Search"
  Get-UDPage -Name "Reset Password"
  Get-UDPage -Name "Restore Deleted User"
) -NavigationLayout Permanent