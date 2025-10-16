

$frase = Read-Host "Introduce una frase"
$letra = Read-Host "Introduce una letra"

$apariciones = 0

for ($i = 0 ; $i -lt $frase.Length ; $i++){
  if ($frase[$i] -eq $letra){
    $apariciones++
  }
}

Write-Host " Aparece $apariciones veces"
