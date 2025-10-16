#!/bin/bash

# Escribir en un archivo

echo -e "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1


#Addici[on multilinea
cat <<EOM >>$1
$2
EOM
