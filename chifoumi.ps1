$ptsU=0
$ptsD=0
$ptsB=0
$valeur=$true
Clear-host

Write-host "===========================================" -ForegroundColor "Green"
Write-host "======        SCRIPT MADE BY       ========" -ForegroundColor "Green"
Write-host "======            ANDRÉ            ========" -ForegroundColor "White"
Write-host "======            FELDER:          ========" -ForegroundColor "White"
Write-host "======           CHIFOUMI          ========" -ForegroundColor "RED"
Write-host "===========================================" -ForegroundColor "RED"

Write-Host "Voici les règles:`n`t vous et l'ordinateur choisissez Pierre Feuille ou ciseaux `n`t L'objet Opposé à celui-ci l'emporte:`n`t la pierre l'emporte sur les ciseaux `n`t les ciseaux l'emporte sur la feuille `n`t et la feuille l'emporte sur la pierre" -ForegroundColor "green"


[int]$choice1= Read-Host 

switch($choice1){

    '0'{$uchoice = "Pierre"}
    '1'{$uchoice = "Feuille"}
    '2'{$uchoice = "Ciseaux"}

}
Write-Host "Choix de l'utilisateur: $uchoice" -ForegroundColor DarkGray

[int]$choice2= Get-Random -Maximum 2

switch($choice2){

    '0'{$Cchoice = "Pierre"}
    '1'{$Cchoice = "Feuille"}
    '2'{$Cchoice = "Ciseaux"}

}
Write-Host Write-Host "Choix du BOT: $Cchoice" -ForegroundColor Gray



function Comparaison{

if($uchoice -like "pierre" -and $Cchoice -like "Ciseaux") 
    {
        
        Write-Host "vous avez gagné cette manche"
        $user=1
        
}
elseif($uchoice -like "Ciseaux" -and $Cchoice -like "Feuille") 
    {
       
       Write-Host "vous avez gagné cette manche"
        $user=1

    }
elseif($uchoice -like "Feuille" -and $Cchoice -like "Pierre") 
    {

        Write-Host "vous avez gagné cette manche"
        $user=1

    }
elseif($uchoice -like "Ciseaux" -and $Cchoice -like "Ciseaux") 
    {

        Write-Host "Égalité"
        $draw=1

    }

elseif($uchoice -like "Feuille" -and $Cchoice -like "Feuille") 
    {
        
        Write-Host "Égalité"
        $draw=1

}

elseif($uchoice -like "Pierre" -and $Cchoice -like "Pierre") 
    {

        Write-Host "Égalité"
        $draw=1

    }
else 
    {

        Write-Host "le bot a gagné cette manche"
        $bot=1

    }
    return $user
    return $bot
    return $draw
}

function compteur($comp){

if ($user -eq 1)
    {
        
        $ptsU++
        $user=0

    }

if ($bot -eq 1)
    {
        
        $ptsB++
        $bot=0
    }

if ($draw -eq 1)
    {
        
        $ptsD++
        $draw=0
    }
Write-Host "Utilisateur : $ptsU" -ForegroundColor "Green"
Write-Host "Égalité : $ptsD" -ForegroundColor "White"
Write-Host "Bot : $ptsB" -ForegroundColor "RED"

if ($ptsU -eq 3)
{

    Write-Host "Vous avez Gagné : $ptsU à $ptsB avec $ptsD manche null contre le bot" -ForegroundColor "Green"
    $valeur=$false
}

if ($ptsB -eq 3)
{

    Write-Host "Le bot à gagné : $ptsB à $ptsU avec $ptsD manche null contre vous" -ForegroundColor "Green"
    $valeur=$false
}

}


While($valeur){


Write-host "===========================================" -ForegroundColor "Green"
Write-host "======         CHIFOUMI            ========" -ForegroundColor "Green"
Write-host "======         0 PIERRE            ========" -ForegroundColor "White"
Write-host "======         1 FEUILLE           ========" -ForegroundColor "White"
Write-host "======         2 CISEAUX           ========" -ForegroundColor "RED"
Write-host "===========================================" -ForegroundColor "RED"

[int]$choice1= Read-Host 

switch($choice1){

    '0'{$uchoice = "Pierre"}
    '1'{$uchoice = "Feuille"}
    '2'{$uchoice = "Ciseaux"}

}
Write-Host "Choix de l'utilisateur: $uchoice" -ForegroundColor DarkGray

[int]$choice2= Get-Random -Maximum 2

switch($choice2){

    '0'{$Cchoice = "Pierre"}
    '1'{$Cchoice = "Feuille"}
    '2'{$Cchoice = "Ciseaux"}

}
Write-Host Write-Host "Choix du BOT: $Cchoice" -ForegroundColor Gray

Comparaison
Compteur







<#
#user
[int]$choice1= Read-Host 

switch($choice1){

    '0'{$uchoice = "Pierre"}
    '1'{$uchoice = "Feuille"}
    '2'{$uchoice = "Ciseaux"}

}
Write-Host "Choix de l'utilisateur: $uchoice" -ForegroundColor DarkGray

#computer

[int]$choice2= Get-Random -Maximum 2

switch($choice2){

    '0'{$Cchoice = "Pierre"}
    '1'{$Cchoice = "Feuille"}
    '2'{$Cchoice = "Ciseaux"}

}
Write-Host Write-Host "Choix du BOT: $Cchoice" -ForegroundColor Gray

#comparaison

if($uchoice -like "pierre" -and $Cchoice -like "Ciseaux") 
    {
        
        Write-Host "vous avez gagné cette manche"
        $user=1

}
elseif($uchoice -like "Ciseaux" -and $Cchoice -like "Feuille") 
    {
       
       Write-Host "vous avez gagné cette manche"
        $user=1

    }
elseif($uchoice -like "Feuille" -and $Cchoice -like "Pierre") 
    {

    Write-Host "vous avez gagné cette manche"
    $user=1

    }
elseif($uchoice -like "Ciseaux" -and $Cchoice -like "Ciseaux") 
    {

        Write-Host "Égalité"
        $draw=1

    }

elseif($uchoice -like "Feuille" -and $Cchoice -like "Feuille") 
    {
        
        Write-Host "Égalité"
        $draw=1

}

elseif($uchoice -like "Pierre" -and $Cchoice -like "Pierre") 
    {

        Write-Host "Égalité"
        $draw=1

    }
else 
    {

    Write-Host "le bot a gagné cette manche"
    $bot=1

    }

if ($user -eq 1)
    {
        
        $ptsU++
        $user=0

    }

if ($bot -eq 1)
    {
        
        $ptsB++
        $bot=0
    }

if ($draw -eq 1)
    {
        
        $ptsD++
        $draw=0
    }
Write-Host "Utilisateur : $ptsU" -ForegroundColor "Green"
Write-Host "Égalité : $ptsD" -ForegroundColor "White"
Write-Host "Bot : $ptsB" -ForegroundColor "RED"

if ($ptsU -eq 3)
{

    Write-Host "Vous avez Gagné : $ptsU à $ptsB avec $ptsD manche null contre le bot" -ForegroundColor "Green"
    $valeur=$false
}

if ($ptsB -eq 3)
{

    Write-Host "Le bot à gagné : $ptsB à $ptsU avec $ptsD manche null contre vous" -ForegroundColor "Green"
    $valeur=$false
}
#>
}
