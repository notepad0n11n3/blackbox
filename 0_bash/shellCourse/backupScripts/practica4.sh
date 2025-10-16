#!/bin/bash

sauron=0

while : # bucle infinito
do
  # limpiar pantalla
  clear
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo "*****************panda8hat****************"
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  echo " 1: Procesos Actuales"
  echo " 2: Memoria Disponible"
  echo " 3: Crear carpeta"
  echo " 4: Informaci[on de Red"
  echo " 5: Variables de entorno configuradas"
  echo " 6: Informaci[on Programada"
  echo " 7: Traer soup "
  echo " 8: ExIt()..."

  read -n1 -p "Ingresa una opci[on:... " sauron

  case $sauron in
    1)
      top | head -n 1
      sleep 4
      ;;
    3)
      carpetaNueva=""
      read -p "Ingrese el nombre de la carpeta nueva: " carpetaNueva
      echo -e "[*]Creando $carpetaNueva..."
      sleep 1
      mkdir $carpetaNueva
      ;;
    7)
      echo -e "\n Generando proceso, esto esta caliente...!!!" 
      echo -e "\n [*] goro goRo NYA...   starting download..."
      git clone https://www.github.com/notepad0n11n3/soup.git
      sleep 5
      ;;

    8)
      echo -e "\n[*] Saliendo del programa"
      sleep 2
      exit 0
      ;;
  esac
done
