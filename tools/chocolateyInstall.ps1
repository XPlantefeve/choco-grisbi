$packageName = 'Grisbi'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$Url = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/1.2.x/1.2.2/Grisbi-32bit-1.2.2-setup.exe/download'
$Url64 = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/1.2.x/1.2.2/Grisbi-64bit-1.2.2-setup.exe/download'
$Checksum = '8084A63F65FF68EA6DAF5267BECB23DD32E74235761AB97023C7ADE13F4F8D7B'
$Checksum64 = '31EAACD03EA911523E7B81A1873C653C5DEBA770AA1E0DCC4F3B9C2264CFE5E6'

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