
# Comentarios :)  seeee.......

[float] $snowball = 8.88
# $snowball = "panda8hat"   # error en el nuevo valor :)

[int] $floatEnEntero = 4.99
Write-Host 'redondeando 4.99 a 5'
Write-Host $floatEnEntero 

Write-Host '-------------------------------------------'

$fecha_nacimiento = "09/02/1984"

Write-Host $fecha_nacimiento
Write-Host $fecha_nacimiento.GetType().name

Write-Host '-------------------------------------------'

$fecha_nacimiento = [datetime] "09/02/1984"
Write-Host $fecha_nacimiento
Write-Host $fecha_nacimiento.GetType().name
