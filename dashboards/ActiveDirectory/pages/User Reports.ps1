New-UDPage -Url "/User-Reports" -Name "User Reports" -Content {
New-UDLayout -Columns 3 -Content {
    New-UDElement -Content {
        New-UDCard -Title 'Users without Managers' -Text 'A report of users that do not have managers'
    } -Tag 'div' -Attributes @{
        onClick = {
            Invoke-UDRedirect '/users-without-managers'
        }
        style = @{
            cursor = 'pointer'
        }
    }

    New-UDElement -Content {
        New-UDCard -Title 'Recently created users' -Text 'Users created in the last 30 days.'
    } -Tag 'div' -Attributes @{
        onClick = {
            Invoke-UDRedirect '/user-recently-created'
        }
        style = @{
            cursor = 'pointer'
        }
    }

    New-UDElement -Content {
        New-UDCard -Title 'Recently modified users' -Text 'Users modified in the last 30 days.'
    } -Tag 'div' -Attributes @{
        onClick = {
            Invoke-UDRedirect '/user-recently-modified'
        }
        style = @{
            cursor = 'pointer'
        }
    }

}
}