


#   WHILE

$whileDes=0

while ($whileDes -lt 100){
  Write-Host "Hello"
  $whileDes++
}



#   DO WHILE

$doWhileDes=0

do {
  Write-Host $doWhileDes
  $doWhileDes++
} while ($doWhileDes -lt 5)



#   FOR

for ($i=0; $i -lt 10; $i++){
  Write-Host $i
}

$colores=@("azul", "verde", "rojo")
for ($i=0; $i -lt $colores.Length; $i++){
  Write-Host $colores[$i]
}


#   FOREACH

$colores=@("azul", "verde", "rojo")

foreach ($i in $colores){
  Write-Host $i
}

$numbers=1..10

foreach ($i in $numbers){
  Write-Host $i
}
