#!/bin/bash

# Sentencia Case


opcion=""

echo "Ejemplo sentencia Case"
read -p "Ingrese una opci[on de la A-Z: " opcion
echo -e "\n"


case $opcion in 
  "A") echo -e "\n Operaci[on guardar archivo";;
  "B") echo -e "\n Operaci[on eliminar archivo";;
  [C-E]) echo -e "No esta implementada la operaci[on";;
  "*") echo -e "Opci[on incorrecta";;
esac
