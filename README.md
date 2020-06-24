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

## Features
## Usage (Optional)
## Documentation (Optional)
## Tests (Optional)

- Going into more detail on code and technologies used
- I utilized this nifty <a href="https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet" target="_blank">Markdown Cheatsheet</a> for this sample `README`.

---

## Contributing

> To get started...

### Step 1

- **Option 1**
    - 🍴 Fork this repo!

- **Option 2**
    - 👯 Clone this repo to your local machine using `https://github.com/joanaz/HireDot2.git`

### Step 2

- **HACK AWAY!** 🔨🔨🔨

### Step 3

- 🔃 Create a new pull request using <a href="https://github.com/joanaz/HireDot2/compare/" target="_blank">`https://github.com/joanaz/HireDot2/compare/`</a>.

---

## Team

> Or Contributors/People

| <a href="http://fvcproductions.com" target="_blank">**FVCproductions**</a> | <a href="http://fvcproductions.com" target="_blank">**FVCproductions**</a> | <a href="http://fvcproductions.com" target="_blank">**FVCproductions**</a> |
| :---: |:---:| :---:|
| [![FVCproductions](https://avatars1.githubusercontent.com/u/4284691?v=3&s=200)](http://fvcproductions.com)    | [![FVCproductions](https://avatars1.githubusercontent.com/u/4284691?v=3&s=200)](http://fvcproductions.com) | [![FVCproductions](https://avatars1.githubusercontent.com/u/4284691?v=3&s=200)](http://fvcproductions.com)  |
| <a href="http://github.com/fvcproductions" target="_blank">`github.com/fvcproductions`</a> | <a href="http://github.com/fvcproductions" target="_blank">`github.com/fvcproductions`</a> | <a href="http://github.com/fvcproductions" target="_blank">`github.com/fvcproductions`</a> |

- You can just grab their GitHub profile image URL
- You should probably resize their picture using `?s=200` at the end of the image URL.

---

## FAQ

- **How do I do *specifically* so and so?**
    - No problem! Just do this.

---

## Support

Reach out to me at one of the following places!

- Website at <a href="http://fvcproductions.com" target="_blank">`fvcproductions.com`</a>
- Twitter at <a href="http://twitter.com/fvcproductions" target="_blank">`@fvcproductions`</a>
- Insert more social links here.

---

## Donations (Optional)

- You could include a <a href="https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png" target="_blank">Gratipay</a> link as well.

[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/fvcproductions/)


---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2015 © <a href="http://fvcproductions.com" target="_blank">FVCproductions</a>.
