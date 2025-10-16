#!/bin/bash
#            si devuelve true se va a ejecutar, interesante :) 
#     if $(ping -c1 192.168.1.$sauronIpHere &>/dev/null); then
#       COMANDOS
#     fi

read -p "Introduzca una ruta: " ruta

if [ -e ${ruta} ]; then
  if [ -d ${ruta} ]; then
    
    echo "Y es u directorio"

  elif [ -f ${ruta} -a -w ${ruta} ]; then

    echo "Y es un fichero y se puede escribir"

  fi
else

  echo "Esta ruta NO existe"

fi


read -p "Introduzca la nota" nota

if [ ${nota} -ge 9 ]; then
  echo "Tienes un sobresaliente"
elif [ ${nota} -ge 7 ]; then
  echo "Tienes un notable"
elif [ $nota -ge 6 ]; then
  echo "Tienes un bien"
elif [ ${nota} -ge 5 ]; then
  echo "Tienes un aprobado"
else
  echo "Desaprobado"
fi
