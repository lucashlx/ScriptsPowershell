# Obtém os membros do grupo local "Administrators"
$localAdmins = Get-LocalGroupMember -Group "Administrators"

# Obtém os membros dos grupos "Domain Admins" e "Enterprise Admins"
$domainAdmins = Get-ADGroupMember "Domain Admins"
$enterpriseAdmins = Get-ADGroupMember "Enterprise Admins"

# Converte os membros dos grupos para listas de nomes de usuários
$localAdminsNames = $localAdmins | ForEach-Object { $_.Name }
$domainAdminsNames = $domainAdmins | ForEach-Object { $_.Name }
$enterpriseAdminsNames = $enterpriseAdmins | ForEach-Object { $_.Name }

# Compara os membros do grupo local com os membros dos grupos "Domain Admins" e "Enterprise Admins"
$diff1 = Compare-Object $localAdminsNames $domainAdminsNames
$diff2 = Compare-Object $localAdminsNames $enterpriseAdminsNames

# Verifica se há diferenças e escreve o valor 1 se houver
if ($diff1.Count -ne 0 -or $diff2.Count -ne 0) {
    Write-Host "1"
} else {
    Write-Host "0"
}
