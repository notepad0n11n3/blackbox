


[float]$paga = Read-Host "Introduce tu sueldo por horas"
[int]$horas = Read-Host "Introduce las horas trabajadas"

$total = $paga * $horas

Write-Host "Te corresponde $total"
