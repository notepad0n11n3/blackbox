#!/bin/bash

# Programa que permite manejar las utilidades de Postgres

opcion=0

while :         #while infinito :
do
  #Limpiar la pantalla
  clear
  #Desplegar el men[u de opciones
  echo "__________________________________________"
  echo "PGUTIL - Programa de utilidad de Postgres"
  echo "__________________________________________"
  echo "               MENU PRINCIPAL             "
  echo "__________________________________________"
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"
  echo "3. Sacar un respaldo"
  echo "4. Restar respaldo"
  echo "5. Salir"

  #Leer los datos del usuario - capturar informaci[on
  read -n1 -p "Ingrese una opci[on (1-5): " opcion

  #Validar la opci[on ingresada
  case $opcion in
    1)
      echo -e "\nInstalar postgress..."
      sleep 3  # Duerme el programa por 3 segundos
      ;;
    2) echo "Desinstalar postgress..."
      sleep 3
      ;;
    3) echo "Sacar respaldo..."
      sleep 3
      ;;
    4) 
      echo -e "\nRestaurar respaldo..."
      sleep 3
      ;;
    5)
      echo -e "\nSalir del Programa"
      exit 0  #ROMPE LA EJECUCI[ON DEL PROGRAMA Y SALIMOS
      ;;
  esac
done

