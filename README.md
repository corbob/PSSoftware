# PSSoftware

[![Build status](https://ci.appveyor.com/api/projects/status/1inriabn8e69d584?svg=true)](https://ci.appveyor.com/project/adbertram/PSSoftware)

> A single way to install, uninstall, upgrade and configure software with a single framework.

PSSoftware is a PowerShell module born from necessity. It was built to create a single tool deploy and manage software. No longer do you have to remember:

```
msiexec.exe /i somemsi.msi /qn /Lvx* C:\Windows\Temp\install.log 
```

...just to deploy a single MSI. PSSoftware simplifies that complexity to just:

```
Install-Software -MsiInstallerFilePath somemsi.msi
```

This is what PSSoftware is all about. Removing the complexities of software management.

## Version Support

| PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|------|------|------|------|----------|-------|
| No   | No   | Yes  | Yes  | Untested | No    |

## Getting Started

### Download

You can [download](https://github.com/adbertram/PSSoftware/archive/master.zip)
this repository.

### Import the Module

Once you've downloaded the repo place the PSSoftware folder in any path in your ``$PSModulePath``. I recommend copying it to either ``C:\Program Files\WindowsPowerShell\Modules`` or ``C:\Users\<Username>\Documents\WindowsPowerShell\Modules``.

Once it's in one of those paths you can either import it manually by ``Import-Module PSSoftware`` or rely on auto-module loading.


### What's included

In the repo you'll find the following files.

| File                       | Provides                                       |
|----------------------------|------------------------------------------------|
| PSSoftware.psm1            | The PowerShell module                          |
| SofwareInstallManager.psd1 | The PowerShell module manifest.                |
| README.md                  | Details for quickly understanding the project. |

## Function Categories

The PSSoftware module is made up of four rough categories of functions with subcategories in each major category.

### Install Functions
|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Install-Software| No   | No   | Yes  | Yes  | Untested | Untested |

### Uninstall Functions
|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Uninstall-Software| No | No | Yes | Yes | Untested | Untested |
|Uninstall-ViaMsiZap| No | No | Yes | Yes | Untested | Untested |
|Uninstall-InstallshieldPackage| No | No | Yes | Yes | Untested | Untested |
|Uninstall-WindowsInstallerPackage| No | No | Yes | Yes | Untested | Untested |
|Uninstall-WindowsInstallerPackageWithMsiModule| No | No | Yes | Yes | Untested | Untested |
|Uninstall-WindowsInstallerPackageWithMsiExec| No | No | Yes | Yes | Untested | Untested |

### Detection Functions

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Get-InstalledSoftware| No | No | Yes | Yes | Untested | Untested |
|Test-InstalledSoftware| No | No | Yes | Yes | Untested | Untested |
|Compare-FilePath| No | No | Yes | Yes | Untested | Untested |
|Compare-File| No | No | Yes | Yes | Untested | Untested |
|Compare-FolderPath| No | No | Yes | Yes | Untested | Untested |
|Compare-RegistryFileToRegistry| No | No | Yes | Yes | Untested | Untested |
|Get-FileVersion| No | No | Yes | Yes | Untested | Untested |
|Get-MyFileHash| No | No | Yes | Yes | Untested | Untested |

### Configuration Functions

#### Registry

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Get-RegistryValue| No | No | Yes | Yes | Untested | Untested |
|Get-RegistryValueForAllUsers| No | No | Yes | Yes | Untested | Untested |
|Import-RegistryFile| No | No | Yes | Yes | Untested | Untested |
|Set-RegistryValueForAllUsers| No | No | Yes | Yes | Untested | Untested |
|Register-File| No | No | Yes | Yes | Untested | Untested |

#### FileSystem

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Copy-FileWithHashCheck| No | No | Yes | Yes | Untested | Untested |
|Find-InTextFile| No | No | Yes | Yes | Untested | Untested |
|Set-MyFileSystemAcl| No | No | Yes | Yes | Untested | Untested |
|New-TempFile| No | No | Yes | Yes | Untested | Untested |

#### Shortcuts

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Get-Shortcut| No | No | Yes | Yes | Untested | Untested |
|New-Shortcut| No | No | Yes | Yes | Untested | Untested |

#### Processes

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Test-Process| No | No | Yes | Yes | Untested | Untested |
|Get-ChildProcess| No | No | Yes | Yes | Untested | Untested |
|Stop-MyProcess| No | No | Yes | Yes | Untested | Untested |
|Wait-MyProcess| No | No | Yes | Yes | Untested | Untested |
|Wait-WindowsInstaller| No | No | Yes | Yes | Untested | Untested |

#### Services

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Remove-MyService| No | No | Yes | Yes | Untested | Untested |

#### Certificates

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Import-Certificate| No | No | Yes | Yes | Untested | Untested |

#### User Profiles

|Function Name   | PSv1 | PSv2 | PSv3 | PSv4 | PSv5     | PSv6  |
|:---------------|------|------|------|------|----------|-------|
|Get-AllUsersDesktopFolderPath| No | No | Yes | Yes | Untested | Untested |
|Get-AllUsersProfileFolderPath| No | No | Yes | Yes | Untested | Untested |
|Get-AllUsersStartMenuFolderPath| No | No | Yes | Yes | Untested | Untested |
|Get-UserProfile| No | No | Yes | Yes | Untested | Untested |
|Get-RootUserProfileFolderPath| No | No | Yes | Yes | Untested | Untested |
|Get-UserProfilePath| No | No | Yes | Yes | Untested | Untested |
|Remove-ProfileItem| No | No | Yes | Yes | Untested | Untested |
|Set-AllUserStartupAction| No | No | Yes | Yes | Untested | Untested |
