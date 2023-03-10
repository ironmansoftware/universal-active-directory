

# PowerShell Universal Active Directory Dashboard

![](./screenshot.png)

Active Directory tools built with PowerShell Universal. Reset passwords, restore deleted users, manage group membership and search for objects.

## Installation 

- Download and install [PowerShell Universal](https://ironmansoftware.com/powershell-universal/downloads)
- Navigate to [http://localhost:5000](http://localhost:5000)
- Login with admin\ admin 
- Install this template by click Platform \ Templates and install the Active Directory template
- View the dashboard at [http://localhost:5000/active-directory](http://localhost:5000/active-directory)

## General Tools

- Object Search

## User Tools

- Search Users
- Reset Password
- Restore Deleted Users

## Group Tools

- Search Groups
- Manage Group Membership

## Infrastructure Tools

- Search Computers
- View Domain Controllers

## Reports

Reports are scripts that can be run to query Active Directory. All reports support exporting as CSV, Excel, PDF and JSON. Reports can be re-run from the dashboard.

![](./reports-screenshot.png)

Current Reports Include:

- Soon to expire Accounts
- Inactive Users
- User with expired account
- Users that cannot change their password
- Users with expired passwords
- Users with passwords that never expire
- Users that have never logged on
- Users without Managers
- Recently Changed Users
- Recently Created Users 
- Recently Deleted Users 
- Disabled Computers
- Inactive Computers
- Domain Controllers

## Usage

The `ActiveDirectory` module is required. All Active Directory commands run under the context of the PowerShell Universal service account. You can specify alternate credentials for the dashboard to run as another user. 

## Role-Based Access

- Administrator - Administrators have access to the entire dashboard. 
- AD Admin - UD Admin have access to the entire dashboard but no access to the admin console. 
- AD Users - Has access to user functionality.
- AD Groups - Has access to group functionality. 

# Changelog

## 2.4.0 - 2-10-2023

- Reports are now run as scripts
- Added new reports

## 2.3.0 - 2-9-2023

- Added reports
- Added role-based access
