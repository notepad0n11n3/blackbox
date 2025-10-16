

#             variable         soloLectur       valorVariable
New-Variable panda8hat -option ReadOnly -value 803

Write-Host $panda8hat
Write-Host $panda8hat.GetType().name

$panda8hat = "new value for variable"
