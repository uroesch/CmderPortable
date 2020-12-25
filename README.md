[![Build](https://github.com/uroesch/CmderPortable/workflows/build-package/badge.svg)](https://github.com/uroesch/CmderPortable/actions?query=workflow%3Abuild-package)
[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/uroesch/CmderPortable?include_prereleases)](https://github.com/uroesch/CmderPortable/releases)
[![Runs on](https://img.shields.io/badge/runs%20on-Win64%20%26%20Win32-blue)](#runtime-dependencies)
![GitHub All Releases](https://img.shields.io/github/downloads/uroesch/CmderPortable/total)

# Cmder for PortableApps.com

<img src="App/AppInfo/appicon_128.png" align=left>

[Cmder](https://cmder.net) is a software package created out of pure 
frustration over absence of usable console emulator on Windows. It is based 
on ConEmu with major config overhaul, comes with a Monokai color scheme, 
amazing clink (further enhanced by clink-completions) and a custom prompt layout.

The main advantage of Cmder is portability. It is designed to be totally 
self-contained with no external dependencies, which makes it great for USB 
Sticks or cloud storage. So you can carry your console, aliases and binaries 
(like wget, curl and git) with you anywhere.

## Runtime dependencies
* 32-bit or 64-bit version of Windows Vista or greater.

## Support matrix

| OS              | 32-bit             | 64-bit              |
|-----------------|:------------------:|:-------------------:|
| Windows XP      | ![nd][nd]          | ![nd][nd]           |
| Windows Vista   | ![nd][nd]          | ![nd][nd]           |
| Windows 7       | ![nd][nd]          | ![nd][nd]           |
| Windows 8       | ![nd][nd]          | ![nd][nd]           |
| Windows 10      | ![nd][nd]          | ![fs][fs]           |

Legend: ![ns][ns] not supported;  ![nd][nd] no data; ![ps][ps] supported but not verified; ![fs][fs] verified;`

## Status
This PortableApps project is in beta stage.

## Todo
- [ ] Documentation

<!-- Start include INSTALL.md -->
## Installation

The Packages found under the release page are not digitally signed so there the installation
is a bit involved.

After download the `.paf.exe` installer trying to install may result in a windows defender
warning.

<img src="Other/Images/info_defender-protected.png" width="260">

To unblock the installer and install the application follow the annotated screenshot below.

<img src="Other/Images/howto_unblock-file.png" width="600">

1. Right click on the executable file.
2. Choose `Properties` at the bottom of the menu.
3. Check the unblock box.
<!-- End include INSTALL.md -->

<!-- Start include BUILD.md -->
### Build

#### Windows 10

To build the installer run the following command in the root of the git
repository.

```
powershell -ExecutionPolicy ByPass -File Other/Update/Update.ps1
```

#### Linux (Docker)

Note: This is currently the preferred way of building.

For a Docker build run the following command.

```
curl -sJL https://raw.githubusercontent.com/uroesch/PortableApps/master/scripts/docker-build.sh | bash
```

#### Linux (Wine)

To build the installer under Linux with Wine and PowerShell installed run the
command below.

```
pwsh Other/Update/Update.ps1
```
<!-- End include BUILD.md -->

[nd]: Other/Icons/no_data.svg
[ns]: Other/Icons/no_support.svg
[ps]: Other/Icons/probably_supported.svg
[fs]: Other/Icons/full_support.svg
[defender_warning]: Other/Images/info_defender-protected.png
[howto_unlock]: Other/Images/info_defender-protected.png
