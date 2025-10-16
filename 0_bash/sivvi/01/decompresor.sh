#!/bin/bash

# obtenemos el nombre del archivo dentro de la compreci[on
ls_archivoGzip=$(7z l content.gzip | grep "Name" -A 2 | tail -n 1 | awk 'NF{print $NF}')

# descomprimimos el archivo inicial   2>&1 convertimos el stderr en stdin
7z x content.gzip > /dev/null 2>&1

contadorDes=1
while true; do
  7z l ${ls_archivoGzip} > /dev/null 2>&1
  if [ $(echo ${?}) -eq 0 ]; then
    newLs_archivoGzip=$(7z l ${ls_archivoGzip} | grep "Name" -A 2 | tail -n 1 | awk 'NF{print $NF}')
    7z x ${ls_archivoGzip} >/dev/null 2>&1 && ls_archivoGzip=${newLs_archivoGzip}
    let contadorDes+=1
  else
    cat ${ls_archivoGzip};# rm data*
    echo ">>${ls_archivoGzip}"
    echo -e "... despues de ${contadorDes} intentos..."
    echo -e "\n\n\t\t\t\t\t $(cat ${ls_archivoGzip} | awk 'NF{print $NF}' && rm data* )"
    echo -e "\n"; ls -lah
    exit 0 # salimos con codigo de estado error
#   exit 0    salida exitosa
  fi
done
