

[string]$nombre_User=Read-Host "Ingresa tu nombre pls "
[int]$number=Read-Host "Ingresa un numero pls "

for($i=1; $i -le $number; $i++){
  Write-Host "$nombre_User  ---  $i"
}
