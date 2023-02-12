New-UDPage -Url "/Reports" -Name "Reports" -Content {
New-UDLayout -Columns 3 -Content {
    $Reports = @(
        @{
            Title = "Users - Inactive"
            Url = "/reports/users/inactive"
            Description = "A report of users that have been inactive for 30 days or more."
        }
         @{
            Title = "Users - Never Logged On"
            Url = "/reports/users/never-logged-on"
            Description = "A report of users that have never logged on."
        }
        @{
            Title = "Users - Recently Created"
            Url = "/reports/users/recently-created"
            Description = "A report of users that have been created in the last 30 days."
        }
        @{
            Title = "Users - Recently Modified"
            Url = "/reports/users/recently-modified"
            Description = "A report of users that have been modified in the last 30 days."
        }
        @{
            Title = "Users - Without Manager"
            Url = "/reports/users/without-manager"
            Description = "A report of users that do not have managers"
        }
    )

    $Reports | ForEach-Object {
        New-UDElement -Content {
            New-UDCard -Title $_.Title -Text $_.Description
        } -Tag 'div' -Attributes @{
            onClick = {
                Invoke-UDRedirect $_.Url
            }
            style = @{
                cursor = 'pointer'
            }
        }
    }
}
}