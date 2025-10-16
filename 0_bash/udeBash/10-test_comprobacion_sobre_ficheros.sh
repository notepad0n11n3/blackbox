#!/bin/bash

#  -d RUTA  Cierto si RUTA existe y es un directorio
#  -e RUTA  Cierto si RUTA existe sea el elemento que sea
#  -f RUTA  Cierto si RUTA existe y es un fichero normal
#  -r RUTA  Cierto si RUTA existe y se puede leer 
#  -w RUTA  Cierto si RUTA existe y se puede escribir
#  -x RUTA  Cierto si RUTA existe y es ejecutable
#  -s RUTA  Cierto si RUTA existe y su tama~o es mayor que cero


read -p "Introduzca una ruta: " ruta

if [ -e ${ruta} ]; then
  echo "Esta ruta existe"
else
  echo "No es una carpeta"
fi

    ##  !   negaci[on, q ponga el echo si NO existe la ruta
if [ ! -e ${ruta} ]; then
  echo "Esta ruta NO existe"
  #exit 1
else
  echo "Sea lo que sea, si existe :) "
fi

if [ -f ${ruta} -a -w ${ruta} ]; then
  echo "Es un fichero y se puede escribir"
else
  echo "No es un fichero"
fi
