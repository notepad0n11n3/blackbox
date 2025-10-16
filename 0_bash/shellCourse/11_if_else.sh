#!/bin/bash

# if else

nota_Clase=0
edad=0

echo "Ejemplo if else"

read -n1 -p "Indique cual es su nota (1-9):" nota_Clase
echo -e "\n"

if (( $nota_Clase >= 7 )); then
  echo "El alumno aprueba la materia"
else
  echo "El alumno reprueba la materia"
fi   #  fi cierra el if

read -p "Cual es su edad:" edad

if [ $edad -le 18 ]; then # -le  menor que ???
  #(( $edad <= 17 )) tambi[en funsiona... :)
  echo "La persona no pede sufragar"
else
  echo "La persona PUEDE sufragar"
fi
