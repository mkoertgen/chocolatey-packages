# Chocolatey Packages

[![Update Packages](https://github.com/mkoertgen/chocolatey-packages/actions/workflows/update-push.yml/badge.svg)](https://github.com/mkoertgen/chocolatey-packages/actions/workflows/update-push.yml)
[Update status](https://gist.github.com/mkoertgen/566db9ad4a81bc3d4d392cd7ec8b4ade)

<!-- markdownlint-disable -->
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<details>
<summary>Table of Contents</summary>

- [Description](#description)
- [Development](#development)
  - [Prerequisites](#prerequisites)
  - [Update packages](#update-packages)
  - [Push packages](#push-packages)

</details>
<!-- END doctoc generated TOC please keep comment here to allow auto update -->

- [Description](#description)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- markdownlint-enable -->

## Description

This repository contains Chocolatey packages, most of which are [automatically](https://docs.chocolatey.org/en-us/create/automatic-packages) updated.
It is updated from [chocolatey-community/chocolatey-packages](https://github.com/chocolatey-community/chocolatey-packages) and will probably merged back at some point in the future.

**All packages in this repository should conform with the [contributing guidelines](CONTRIBUTING.md).** Contributions that follow the guideliness are welcome.
All packages in this repository are expected to be installable with any version of Chocolatey being made available in the past 12 months, unless a dependency on Chocolatey has been added.

## Development

### Prerequisites

From an administrative powershell install the following:

```powershell
Install-Module au , wormies-au-helpers
```

### Update packages

```powershell
# Update all packages
.\update_all.ps1

# Update an invidual package
cd .\automatic\visualvm\
.\update.ps1
# This should build package like 'visualvm.2.1.4.nupkg'
```

### Push packages

Make sure your api key is configured. You can find it on your [Chocolatey Account](https://community.chocolatey.org/account)

```powershell
choco apikey -k <key> -s https://push.chocolatey.org/
```

To push the updated package, just use the following command (in the directory of your built package):

```powershell
Push-Package
```
