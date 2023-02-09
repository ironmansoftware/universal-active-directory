$Navigation = {
  Protect-UDSection -Role @("Administrator", "AD Admin", "AD Users") -Children {
    New-UDListItem -Label 'Users' -Icon (New-UDIcon -Icon 'User') -Children {
      New-UDListItem -Label 'Search Users' -Icon (New-UDIcon -Icon 'Search') -Href '/search-users' -Nested
      New-UDListItem -Label 'Create User' -Icon (New-UDIcon -Icon 'UserPlus') -Href '/create-user' -Nested
      New-UDListItem -Label 'Inactive Users' -Icon (New-UDIcon -Icon 'Stop') -Href '/inactive-users' -Nested
      New-UDListItem -Label 'Reset Password' -Icon (New-UDIcon -Icon 'Key') -Href '/reset-password' -Nested
      New-UDListItem -Label 'Restore Deleted User' -Icon (New-UDIcon -Icon 'Trash') -Href '/restore-deleted-user' -Nested
      New-UDListItem -Label 'User Reports' -Icon (New-UDIcon -Icon 'UsersGear') -Href '/user-reports' -Nested
    }
  }
  Protect-UDSection -Role @("Administrator", "AD Admin", "AD Groups") -Children {
    New-UDListItem -Label 'Groups' -Icon (New-UDIcon -Icon 'Users') -Children {
      New-UDListItem -Label 'Search Groups' -Icon (New-UDIcon -Icon 'Search') -Href '/groups' -Nested
      New-UDListItem -Label 'Create Group' -Icon (New-UDIcon -Icon 'UsersCog') -Href '/create-group' -Nested
      New-UDListItem -Label 'Group Membership' -Icon (New-UDIcon -Icon 'Users') -Href '/group-membership' -Nested
    }
  }
  Protect-UDSection -Role @("Administrator", "AD Admin") -Children {
    New-UDListItem -Label 'Infrastructure' -Icon (New-UDIcon -Icon 'Server') -Children {
      New-UDListItem -Label 'Search Computers' -Icon (New-UDIcon -Icon 'Search') -Href '/Search-Computers' -Nested
      New-UDListItem -Label 'Domain Controllers' -Icon (New-UDIcon -Icon 'Database') -Href '/Domain-Controllers' -Nested
    }
  }
  New-UDListItem -Label 'Object Search' -Icon (New-UDIcon -Icon 'Search') -Href '/object-search'
}

New-UDDashboard -Title "Active Directory Tools" -Pages @(
  Get-UDPage -Name "Create User"
  Get-UDPage -Name "Create Group"
  Get-UDPage -Name "Domain Controllers"
  Get-UDPage -Name "Groups"
  Get-UDPage -Name "Group Membership"
  Get-UDPage -Name "Object Info"
  Get-UDPage -Name "Object Search"
  Get-UDPage -Name "Search Computers"
  Get-UDPage -Name "Search Users"
  Get-UDPage -Name "Reset Password"
  Get-UDPage -Name "Restore Deleted User"
  Get-UDPage -Name 'Inactive Users'
  Get-UDPage -Name 'User Reports'
  Get-UDPage -Name 'Users without Managers'
  Get-UDPage -Name 'User Recently Created'
  Get-UDPage -Name 'User Recently Modified'
) -NavigationLayout Permanent -LoadNavigation $Navigation