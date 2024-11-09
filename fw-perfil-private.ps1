$firewallprivate = Get-NetFirewallProfile -Name Private | select Enabled
if ( $firewallprivate.Enabled -eq "True"){
      write-host 1
}elseif ( $firewallprivate.Enabled -eq "False"){
    write-host 2
    
}
