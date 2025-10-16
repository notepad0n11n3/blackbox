#!/bin/bash

# Expresiones condicionales

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones condicionales con n[umeros"
if [ $edad -lt 10 ]; then # -lt  menor
  echo "La persona es un ni~o o ni~a"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
  echo "La persona se trata de un adolecente"
else
  echo "La persona es mayor de edad"
fi


echo -e "\nExpresiones condicionales con cadenas"
if [ $pais == "EEUU" ]; then # -lt  menor
  echo "La persona es Americana"
elif [ $pais == "Ecuador" ] || [ $pais == "Colombia" ]; then
  echo "La persona es del sur de Am[erica"
else
  echo "Se desconoce la nacionalidad"
fi


echo -e "\n Expresiones condicionales con archivos"
if [ -d $pathArchivo ]; then
  echo "El directorio $pathArchivo existe"
else
  echo "El directorio $pathArchivo no existe"
fi
