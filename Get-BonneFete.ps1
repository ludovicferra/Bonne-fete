Function Get-BonneFete {
    param( [Parameter(Mandatory=$false)][String]$Prenom = "à Toi" )
    $Message = "Bonne Fête $Prenom !"
    $Anim = @("|","/","-","\","|")
    $CharArray =$Message.ToCharArray()
    $i = 10
    Clear-Host
    Write-Host "$("#" * ($CharArray.Count + 4))"
    Write-Host "# " -NoNewline
    foreach ($Car in $CharArray) {
        Do {
            foreach ($Item in $Anim) {
                $rounded = [math]::Round($i/10);
                Write-Host ("$Item" * $rounded+"`b" * $rounded) -NoNewline  
                Start-Sleep -m 50
                $i ++
            }
        } While ( $i -eq $Anim.Count )
        $i = 10
        Write-Host $Car -NoNewline
    }
    Write-Host " #"
    Write-Host "$("#" * ($CharArray.Count + 4))"
}
