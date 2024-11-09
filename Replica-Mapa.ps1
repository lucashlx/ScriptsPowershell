$replica = Get-VMReplication  | select Health
if ( $replica.Health -eq "Warning"){
      write-host 2
      write-host Problema-Replicacao
      Get-VMReplication
}elseif ( $replica.Health -eq "Critical"){
    write-host 1
    write-host Replicacao-OK
    Get-VMReplication
}