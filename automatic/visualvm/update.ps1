[CmdletBinding()]
param([switch] $Force)

Import-Module AU

$domain = 'https://github.com'
$releases = "$domain/oracle/visualvm/releases/latest"

function global:au_BeforeUpdate {
  #Get-RemoteFiles -Purge -NoSuffix -FileNameBase "visualvm"
}

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(url\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(?i)(checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

 
  $re = '\.zip$'
  $url = $download_page.links | Where-Object href -match $re | ForEach-Object href | Select-Object -First 1
  $version = (Split-Path ( Split-Path $url ) -Leaf)

  #Write-Host "Latest url is $domain$url"
  #Write-Host "Latest version is $version"

  return @{
    Version    = $version
    URL64      = "$domain$url"
    ReleaseURL = "$domain/oracle/visualvm/releases/tag/${version}"
  }
}

update