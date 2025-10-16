
[int]$edad = Read-Host "Introduce tu edad: "

if ($edad -ge 18){
  Write-Host "Es mayor de edad"
}elseif (($edad -lt 18) -And ($edad -gt 13)){
  Write-Host "Es Adolecente"
}else{
  Write-Host "Todav[ia es un ni~o :u "
}
Write-Host "Fin del programa"
