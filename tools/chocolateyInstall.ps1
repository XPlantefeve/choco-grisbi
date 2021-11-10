$packageName = 'Grisbi'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$Url = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/2.0.x/2.0.5/Grisbi-32bit-2.0.5-setup.exe/download'
$Url64 = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/2.0.x/2.0.5/Grisbi-64bit-2.0.5-setup.exe/download'
$Checksum = 'AE36B6341831C2F544315A0AC4A867D1365F2083324C774C45688A9C91403929'
$Checksum64 = '848B48ABA5ADD0DB49DC4E0805BC84F1A4208A0AD5617CAD1E6F73EE8E314B50'

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
