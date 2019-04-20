$packageName = 'Grisbi'
$installerType = 'exe'
$url = 'https://sourceforge.net/projects/grisbi/files/grisbi%20stable/1.2.x/1.2.2/Grisbi-64bit-1.2.2-setup.exe/download'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
