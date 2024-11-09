# Importando o certificado TestRoot, esta importando na pasta Personal, necessario mover para a pasta correta.
# Mover para Trusted Root
Import-Certificate -FilePath "C:\certs\hv01.pfx" -CertStoreLocation 'Cert:\LocalMachine\My' -Verbose 


# Importando o certificado PfxCertificate com senha
# Importar os dois certificados exportados no Servidor Master
$mypwd = Get-Credential -UserName 'Enter password below' -Message 'Enter password below'Import-PfxCertificate -FilePath C:\certs\hv02.pfx -CertStoreLocation Cert:\LocalMachine\My -Password $mypwd.Password -verbose

