


for ($i = 1; $i -le 10; $i++){
  Write-Host "Tabla del $i :"
  for ($b = 1; $b -le 10; $b++){
    Write-Host "$i * $b =", ($i * $b)
  }
  Write-Host "----------------------"
}
