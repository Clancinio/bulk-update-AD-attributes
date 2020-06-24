# This script updates bulk updates the description field in AD from a CSV file

# Propt for Admin credentials and store in $credential variable 
$credential = Get-Credential

# Load data from file.csv
$ADUsers = Import-csv C:\Users\myfile.csv # Change this to your CSV location


# Count variable for number of users update
$count = 0

# Server variable - Change this IP to your Domain Controller IP - To get server IP run the command Get-ADDomainController in PowerShell
$server = "27.0.0.1"

# Go through each row that has user data in the CSV we just imported 
ForEach($User in $ADUsers)
{
    # Ppopulate hash table for Get-ADUser splatting:
    $GetParams =
    @{
        Identity     = $User.Username
        Server       = $server
        Credential   = $Credential
    }

    # Initialize hash table for Set-ADUser splatting:
    $SetParams =
    @{
        Server       = $server
        Identity     = $User.Username
        
        # Make sure these match the columns in CSV - these will be the attributes to update
        Description  = $User.Description
        Office       = $User.Office
    }

    # Check to see if the user already exists in AD. If they do, we update.
    if ( Get-ADUser @GetParams)
    {
         # Set User attributes
         Set-ADUser @SetParams #-WhatIf

         # Print that the user was updated 
         Write-Host -ForegroundColor Yellow "$User - User attributes have been updated." 

         # Update Count
         $count += 1    
     }
}

# Print the number of updated users
Write-Host $count "Users have been updated" -ForegroundColor Green
