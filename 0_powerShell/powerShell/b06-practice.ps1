
[int]$numero1 = Read-Host "Introduce un numero"
[int]$numero2 = Read-Host "Introduce un segundo numero"

Write-Host "La division de $numero1 por $numero2 da", ($numero1/$numero2), "con resto", ($numero1%$numero2)
