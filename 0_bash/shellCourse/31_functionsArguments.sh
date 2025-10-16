#!/bin/bash

#

opcion=0

#funcion para instalar postgres
instalar_postgres () {
  echo "Instalar GORO GORO NYA..."
}

#Desinstalar postgres
desinstalar_postgres () {
  echo "Desinstalando GORO GORO NYAASDASDFAEF..."
}

#Sacar respaldo
sacar_respaldo () {
  echo "respaldo hello hello"
  echo "Directorio Baskup::: $1"
}

restaurar_respaldo () {
  echo "Restaurar respaldo"
  echo "Directorio Baskup::: $1"
}

salir_programa () {
  exit 0
}





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
      instalar_postgres
      #echo -e "\nInstalar postgress..."
      sleep 3  # Duerme el programa por 3 segundos
      ;;
    2)
      desinstalar_postgres
      #echo "Desinstalar postgress..."
      sleep 3
      ;;
    3) 
      read -p "Directorio Backup:__.." directorioBackup
      sacar_respaldo $directorioBackup
      #echo "Sacar respaldo..."
      sleep 3
      ;;
    4) 
      read -p "Directorio de Respaldos:__.." directorioRespaldos
      restaurar_respaldo $directorioRespaldos
      #echo -e "\nRestaurar respaldo..."
      sleep 3
      ;;
    5)
      salir_programa
#      echo -e "\nSalir del Programa"
#      exit 0  #ROMPE LA EJECUCI[ON DEL PROGRAMA Y SALIMOS
      ;;
  esac
done

