Clear-host

Write-host "===========================================" -ForegroundColor "Blue"
Write-host "======        SCRIPT MADE BY       ========" -ForegroundColor "Blue"
Write-host "======            ANDRÉ            ========" -ForegroundColor "White"
Write-host "======            FELDER           ========" -ForegroundColor "RED"
Write-host "===========================================" -ForegroundColor "RED"

Write-Host "Veuillez entrer votre première valeur"-ForegroundColor "Blue"
$nb1 = Read-Host
[float]$nb1bis= $nb1
if ($nb1bis -isnot [float])
    {
        
        [float]$nb1= Read-Host "veuillez saisir une valeur numérique"
    }
Write-Host "Veuillez entrer votre seconde valeur"
$nb2 = Read-host
[float]$nb2bis= $nb2 
if ($nb2bis -isnot [float])
    {
        [float]$nb2= Read-Host "veuillez saisir une valeur numérique"
    }
write-host "Quelle type de d'opération voulez-vous réaliser ?`n
    -Addition (1) `n
    -Soustraction (2) `n
    -Multiplication (3) `n
    -Division (4) `n
    -Division entière(5)`n" -ForegroundColor "RED"
$type= Read-Host
[int]$typebis= $type
if ($typebis -isnot [int])
    {
        [int]$type= Read-Host "veuillez saisir une valeur numérique"
    }



if ($type -eq 1)
    {
        [float]$Res=$nb1+$nb2
        Write-host "le résultat de l'opération mathématique $nb1 + $nb2 est : $Res" -ForegroundColor "Blue"
    }
elseif ($type -eq 2)
    {
        [float]$Res=$nb1-$nb2
        Write-host "le résultat de l'opération mathématique $nb1 - $nb2 est : $Res" -ForegroundColor "Blue"
    } 
elseif ($type -eq 3)
    {
        [float]$Res=$nb1*$nb2
        Write-host "le résultat de l'opération mathématique $nb1 * $nb2 est : $Res" -ForegroundColor "Blue"
    }
elseif ($type -eq 4)
    {
        [float]$Res=$nb1/$nb2
        Write-host "le résultat de l'opération mathématique $nb1 / $nb2 est : $Res" -ForegroundColor "Blue"
    }
elseif ($type -eq 5)
    {
        [float]$Res=$nb1%$nb2
        Write-host "le résultat de l'opération mathématique $nb1 % $nb2 est : $Res" -ForegroundColor "Blue"
    }
else 
    {
        Write-Host "Érreur opérateur inconnu"
    } 

