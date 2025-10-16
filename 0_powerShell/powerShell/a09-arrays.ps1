
$array_vacio = @()

$enteros = @(1,2,3,4,5)
$enteros = 1,2,3,4,5

$consecutivos = 1..10       # Array con numeros consecutivos del 1 al 10 :)

$caracteres = "a","b","c","d","e"

$multi_tipo = @(1,2,3,'a','b')


Write-Host $enteros
$enteros -join ' aeo '
Write-Host $enteros[1]
Write-Host $enteros[-1] # con numerosNegativos accedemos a los datos del array de derecha a Izquierda
Write-Host $enteros[-3]

Write-Host $enteros.Length    # cantidadArray


#             A~ADIR ELEMENTOS A UN ARRAY
$enteros += 'x'
$enteros += '8','w'
Write-Host $enteros
$enteros -join ' @ '


#             ELIMINAR ELEMENTOS DE UN ARRAY
  # para eliminar algo de un array usa  ArrayList al declarar el array :)
      # ArrayList es como un array pero sin ser fijo, por defecto en powerShell los arrays son estaticos(creo :u)
  
[System.Collections.ArrayList]$panda8hat="A","B","c","D"
Write-Host $panda8hat
$panda8hat.Remove("B")
Write-Host $panda8hat


# sumar(solo concatena) arrays :) 
$a = @(2,3)
$b = @(2,3)
$c = $a+$b
Write-Host $c
$c -join '-' # NO NECESITA EL Write-Host, lo imprime directamente :) :) :)

$c -contains 2    # return True si contiene 
$c -notcontains 8   # return True siNO contiene 
