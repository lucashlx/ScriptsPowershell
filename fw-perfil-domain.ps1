$firewalldomain = Get-NetFirewallProfile -Name Domain | select Enabled
if ( $firewalldomain.Enabled -eq "True"){
      write-host 1
}elseif ( $firewalldomain.Enabled -eq "False"){
    write-host 2
    
}
