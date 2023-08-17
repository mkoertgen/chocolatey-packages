[CmdletBinding()]
param([switch] $Force)

Import-Module AU

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
  $page = Invoke-RestMethod -Uri https://api.github.com/repos/oracle/visualvm/releases/latest
  $url = $page.assets | Where-Object browser_download_url -match '\.zip$' | ForEach-Object browser_download_url | Select-Object -First 1

  return @{
    Version    = $page.tag_name
    URL64      = $url
    ReleaseURL = $page.html_url
  }
}

update
