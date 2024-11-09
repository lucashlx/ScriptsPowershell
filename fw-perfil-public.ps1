$firewallpublic = Get-NetFirewallProfile -Name Public | select Enabled
if ( $firewallpublic.Enabled -eq "True"){
      write-host 1
}elseif ( $firewallpublic.Enabled -eq "False"){
    write-host 2
    
}
