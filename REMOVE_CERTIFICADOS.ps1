$thumbprint = "87465bd1dd4a2d740329a47a03a4b89a66383b99"

$store = Get-Item -Path "Cert:\CurrentUser\My"

$cert = $store | Get-ChildItem | Where-Object { $_.Thumbprint -eq $thumbprint }

if ($cert) {
    $store.Open("ReadWrite")
    $store.Remove($cert)
    $store.Close()
    Write-Host "Certificado removido com sucesso."
} else {
    Write-Host "Certificado não encontrado com o thumbprint fornecido."
}