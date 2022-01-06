# Bonne-fete
Script animation bonne fête en Powershell

### Utilisation simple en donnant directement la variable prenom :

Get-BonneFete -Prenom "TonPrénom"
Get-BonneFete"TonPrénom"

### Utilisation en récupérant le prénom de l'utilisateur AD executant le script  :

Get-BonneFete -Prenom $((([adsi]"WinNT://$Env:userdomain/$Env:username").fullname) -split " ")[0]
