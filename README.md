<a href="http://fvcproductions.com"><img src="https://messagingarchitects.com/wp-content/uploads/2019/07/active-directory_0.jpg" title="FVCproductions" alt="Active Directory"></a>

<!-- [![Messaging Architects](https://messagingarchitects.com/active-directory-management/)](https://messagingarchitects.com) -->


# Bulk Update Active Directory Attributes 

> This script will bulk update Active Directory attributes from a CSV file. Simply add the attributes you need to update as a column in the CSV file

### Clone

- Clone this repo to your local machine using `https://github.com/Clancinio/bulk-update-AD-attributes`

### Setup

- Firstly, open the script in a text editor to set it up so that it works for you

> add the location of the CSV file to read from 

```shell
# Load data from file.csv
$ADUsers = Import-csv C:\Users\myfile.csv # Change this to your CSV location
```

> now change the server IP to your Domain Controler IP

```shell
# Server variable - Change this IP to your Domain Controller IP - To get server IP run the command Get-ADDomainController in PowerShell
$server = "27.0.0.1"
```

> now change the server IP to your Domain Controler IP

```shell
   # Initialize hash table for Set-ADUser splatting:
    $SetParams =
    @{
        Server       = $server
        # The first column should always be username
        Identity     = $User.Username
        
        # Then add the attributes you wish to update - make sure they match with the columns in the CSV (refer to new_description for example)
        Description  = $User.Description
        Office       = $User.Office
    }
```

---

## Running the Script
- Once you have the script and CSV file set up. Run it as an Admin in PowerShell.
- Be sure to test it with just one user(row) first to make sure the script works properly


