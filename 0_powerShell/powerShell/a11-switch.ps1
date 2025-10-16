


$color = Read-Host "Introduce el color del sam[eforo (rojo, verde, amarillo) "

switch ($color)
{
  "rojo" { 
    Write-Host "No puedes pasar"
      Break
    }
  "amarillo" {
    Write-Host "Precauci[on"
      Break
    }
  "verde" {
    Write-Host "Puedes pasar"
      Break
    }
    default{
      Write-Host "Color no V[alido"
    }
}

Write-Host "------------------------------"


[int]$dataUser = Read-Host "Ingrese un numero"
switch ($dataUser)
{
  {$_ -eq 1}{
    Write-Host "Uno... Nice"
    Break
  }
  {$_ -eq 2}{  #like bashScript :)
    Write-Host "Dos... Cool"
    Break
  }
  default{
    Write-Host "Nota no v[alida"
  }
}
