#!/bin/bash
#Como ejecutar comandos dentro de un programa y almacenarlos en variable 


ubicacionActual=`pwd`     #NO SON COMILLAS DOBLAS OJO, debajo de ESC
infoKernel=$(uname -a)

echo "La ubicaci[on actual es la siguiente: $ubicacionActual"
echo "Informaci[on del kernel: $infoKernel"

