#!/bin/bash

# Paso de opciones con [o sin parametros

echo "Programa Opciones"
echo "Opci[on 1 enviada: $1"
echo "Opci[on 2 enviada: $2"
echo "Opci[on 3 enviada: $3"
echo -e "\n"
echo "Recuperar valores"

while [ -n "$1" ] # los espacios dentro de los [ 8 ] al ini/final noNegoci
do
  case "$1" in # like swtich JS :)
    -a) echo "-a option utilizada";;
    -b) echo "-b option utilizada";;
    -c) echo "-c option utilizada";;
    *) echo ":::$1 no es una opci[on";;
  esac
  shift
done
