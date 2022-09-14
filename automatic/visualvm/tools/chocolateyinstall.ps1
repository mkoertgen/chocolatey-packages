$ErrorActionPreference = 'Stop'; # stop on all errors

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  url = 'https://github.com/oracle/visualvm/releases/download/2.1.4/visualvm_214.zip'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum = 'bf6c116fd868f8c6f15af3f6e9b5454f21cfffd7a5ecfbb6c653e278ac400f7d'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
