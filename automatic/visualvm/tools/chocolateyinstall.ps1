$ErrorActionPreference = 'Stop'; # stop on all errors

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  url = 'https://github.com/oracle/visualvm/releases/download/2.1.6/visualvm_216.zip'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum = '9b1c8adab1f776ea0ab2fca71be4f0e79f0ea6c6d0c9f170506851cccfdc1963'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
