$thumbprint = "65fc9b280304858a45fe5cf35fab1cd3a06b810d"
$storeLocation = "Cert:\CurrentUser\My"

Get-ChildItem -Path $storeLocation | Where-Object { $_.Thumbprint -eq $thumbprint } | Remove-Item -Force
