#!/bin/bash

#

opcion=0
fechaActual=`date +%Y%m%d`

#funcion para instalar postgres
instalar_postgres () {
  echo "Instalar GORO GORO NYA..."
  verifyInstall=$(which psql)
  if [ $? -eq 0 ]; then
    echo -e "\n Postgres ya se encuentra instalado"
  else
    read -s -p "Ingresar contrase~a de sudo: " password
    read -s -p "Ingresar contrase~a para postgres: " passwordPostgres
    echo "$password" | sudo -S apt update
    echo "$password" | sudo -S apt-get -g install postgresql postgresql-contrib #-g va a iniciar la instalaci[on sin preguntar
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '[$passwordPostgres]':"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar: " #-n mantieneCursorNlaMismaLinea
}

#Desinstalar postgres
desinstalar_postgres () {
  echo "Desinstalando GORO GORO NYAASDASDFAEF..."
  read -s -p "Ingresar contrase~a de sudo: " password
  echo -e "\n"
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt-get -y --purge remove postgresql/*
  echo "$password" | sudo -S rm -r /etc/postgresql
  echo "$password" | sudo -S rm -r /etc/postgresql-common
  echo "$password" | sudo -S rm -r /var/lib/postgresql
  echo "$password" | sudo -S rm -r userde1 -r postgres
  echo "$password" | sudo -S groupde1 postgresql
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar: " #-n mantieneCursorNlaMismaLinea

}

#Sacar respaldo
sacar_respaldo () {
  echo "respaldo hello hello"
  sudo -u postgres psql -c "\i"
  read -p "Elegir la base de datos a respaldar" bddRespaldo
  echo -e "\n"
  if [ -d "$1"]; then
    echo "Establecer permisos al directorio"    
    echo "$password" | sudo -S chmod 755 $1
    echo "Realizando respaldo.."
    sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
  else
    echo "El directorio $1 no existe"
  fi
  read -n 1 -s -r -p "PRESIONA [ENTER] para continuar..."
}

restaurar_respaldo () {
  echo "Restaurar respaldo"
  echo "Listar respaldos"
  read -p "Ingresa el directorio donde estan los respaldos: " directorioBackup
  ls -al $directorioBackup
  read -p "Elegir el respaldo a restaurar:"
  echo -e "\n"
  read -p "Ingrese el nombre de la base de datos destino: " bddDestino
  #Verificar si la bdd existe
  verifyBdd=$(sudo -u postgres psql -lqt | cut -d \| -f 1 \ grep -wp $bddDestino)
  if [ $? -ep 0 ]; then
    echo "Restaurando en la bdd destino: $bddDestino"
  else
    sudo -u postgres psql -c "create database $bddDestino"
  fi

  if [ -f "$respaldoRestaurar" ]; then
    echo "Restaurando respaldo..."
    sudo -u postgres pg_restore -Fc -d $bddDestino "$directorioBackup/$respaldoRestaurar"
    echo "Listar la base de datos"
    sudo -u postgres psql -c "\1"
  else
    echo "El respaldo $respaldoRestaurar no existe"

  fi
  read -n 1 -s -r -p "PRESIONA [ENTER] para continuar..."
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

