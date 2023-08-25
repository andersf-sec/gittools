$thehost=hostname
$shares=get-smbshare|foreach-object {Get-SmbShareAccess $_.Name}
$net=netstat -anb
$thehost,$shares,$net|out-string
netsh advfirewall show currentprofile
gwmi  win32_service |foreach-object {if ($_.pathname -match '.* .*\\'){if ($_.pathname -match '"'){"----------------",$_.name,$_.pathname,$_.state,$_.StartName,$_.StartMode}}}
