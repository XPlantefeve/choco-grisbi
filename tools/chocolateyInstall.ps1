$packageName = 'Grisbi'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$Url = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/2.0.x/2.0.0/Grisbi-32bit-2.0.0-01-setup.exe/download'
$Url64 = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/2.0.x/2.0.0/Grisbi-64bit-2.0.0-01-setup.exe/download'
$Checksum = '717E2675302D315898D3D165DA9D090421139B8508BBE1495ECD16876D065624'
$Checksum64 = '9856BD93BBA308ADCEC327EF1186B85E16E3FD5B9ADC657C2352D15E28D93AB6'

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