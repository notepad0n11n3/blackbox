#!/bin/bash

# Vamo pa lante go men GO...

nota_Clase=0
continua=""

echo "Ejemplo if else"

read -n1 -p "Indique cual es su nota (1-9):" nota_Clase
echo -e "\n"

if [ $nota_Clase -ge 7 ]; then # -ge  mayor/igual  >=
  echo "El alumno aprueba la materia"
  read -p "Va a continuar estudiando (s/n)" continua
  if [ $continua == "s" ]; then
    echo "Bienvenido a el siguiente nivel"
  else
    echo "Hasta pronto, gracias."
  fi
else
  echo "El alumno reprueba la materia"
fi
