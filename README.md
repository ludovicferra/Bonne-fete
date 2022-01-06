# Bonne-fete
Script animation bonne fête en Powershell

![BonneFete-Exemple](https://github.com/ludovicferra/Bonne-fete/raw/main/BonneFete-Exemple.gif)

### Utilisation simple en donnant directement la variable prenom :

Get-BonneFete -Prenom "Visiteur Git"

Get-BonneFete "Visiteur Git"

### Utilisation en récupérant le prénom de l'utilisateur AD executant le script  :

Get-BonneFete -Prenom $((([adsi]"WinNT://$Env:userdomain/$Env:username").fullname) -split " ")[0]
