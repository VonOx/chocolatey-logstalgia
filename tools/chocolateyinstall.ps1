
$ErrorActionPreference = 'Stop';


$packageName= 'logstalgia'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/acaudwell/Logstalgia/releases/download/logstalgia-1.0.7/logstalgia-1.0.7-setup.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'logstalgia*'
}

Install-ChocolateyPackage @packageArgs


















