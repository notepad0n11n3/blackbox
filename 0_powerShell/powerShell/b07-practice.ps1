

[int]$numero = Read-Host "Introduce un numero"
$texto = ""



for ($i=1; $i -lt $numero; $i++){
  if($i%2 -eq 1){
    $texto+=[string]$i + "," # $texto = $texto + [string]$i + ","
  }
}
Write-Host $texto



$texto = ""
for ($i=$numero; $i -ge 0; $i--){
  $texto+=[string]$i + ","
}
Write-Host $texto



$texto = ""
for ($i = 0; $i -lt $numero; $i++){
  $texto+="*"
  Write-Host $texto
}
