$packageName = 'Grisbi'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$Url = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/2.0.x/2.0.4/Grisbi-32bit-2.0.4-setup.exe/download'
$Url64 = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/2.0.x/2.0.4/Grisbi-64bit-2.0.4-setup.exe/download'
$Checksum = 'C051B536547E5A84CD54BD8244823060BE730BE7148A1452D99F434BA019528C'
$Checksum64 = 'E5F2BEE6AF1DE58AAF0DD73165C7EB8005846AA29E79713C0461909A16CE1281'

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'
    url            = $url
    url64bit       = $url64
    silentArgs     = '/S'
    validExitCodes = @(0)
    softwareName   = 'Grisbi*'
    checksum       = $Checksum
    checksumType   = 'sha256'
    checksum64     = $Checksum64
    checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
