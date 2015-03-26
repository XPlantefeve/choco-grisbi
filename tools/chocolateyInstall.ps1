$packageName = 'Grisbi'
$installerType = 'exe'
$url = 'http://downloads.sourceforge.net/project/grisbi/grisbi%20stable/0.8.x/Grisbi_0.8.9-3_win32_mingw.exe?r=&ts=1427285002&use_mirror=kent'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
