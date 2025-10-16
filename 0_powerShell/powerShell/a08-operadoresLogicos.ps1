

Write-Host (5 -gt 1) -And (5 -lt 10)    # solo si ambos son True return True
Write-Host (5 -gt 1) -And (5 -lt 10) -And (5 -lt 10)


Write-Host (5 -gt 1) -Or (5 -lt 1)  # return True si almenos una es True



Write-Host (5 -gt 1) -Xor (5 -lt 1)  # solo es True si SOLO 1 es true, si ambos son True o False return False


Write-Host  -Not(5 -gt 1)  # negacion del return True to False   //  False to True




$a = "Hola"

$a -is [int]   # return False   ( a es un entero )
$a -isnot [int]  # return True    ( a NO es un entero )


