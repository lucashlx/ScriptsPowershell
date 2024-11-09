# Define os nomes dos grupos permitidos

$allowedGroups = @("Domain Admins", "Computers Admins")

# Obtém os membros do grupo local "Administrators"
$localAdmins = Get-LocalGroupMember -Group "Administrators"

# Filtra os membros que não são dos grupos permitidos
$nonAllowedMembers = $localAdmins | Where-Object { $_.Name -notin $allowedGroups }

# Verifica se há membros não permitidos e escreve o valor 1 se houver
if ($nonAllowedMembers.Count -gt 0) {
    Write-Host "1"
} else {
    Write-Host "0"
}
