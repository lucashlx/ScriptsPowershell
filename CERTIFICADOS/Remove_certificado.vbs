Set OShell = CreateObject ("Wscript.Shell")
Dim sArg
sArg = "powershell.exe -File C:\apps\CERTIFICADOS\REMOVE_CERTIFICADOS_EXPIRADOS.ps1"
oShell.Run sArg, 0, false