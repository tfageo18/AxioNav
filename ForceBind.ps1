
$debug    = 0
$ip       = Get-NetIPAddress -InterfaceAlias Wi-Fi
$ip       = $ip.IPAddress | Out-String

If ($debug -eq 1)  { Write-Host "Mon adresse IP est : "$ip }
If ($debug -eq 0 ) { 
    #Invoke-Expression $commande 
    &"C:\Windows\SysWOW64\ForceBindIP.exe" $ip "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
}