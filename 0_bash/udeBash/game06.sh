#!/bin/bash

here1=""
# Ingrese la fecha de nacimiento, print cuantos a~os tiene v
#date_system=$(date +%F | cut -d"-" -f1)
#echo -e -n "Date sys: ${date_system} \n"
#echo -e -n "Ingresa tu a~o de nacimiento: "
#read user_date
#echo -e " Tu edad Actual es $(( ${date_system} - ${user_date} )) "

here2=""
# perdir ruta, cread menu, a. Comprobar si es un directorio , b. crear el directorio, c. listar su contenido
go_start () {
  echo -e -n "Ingrese una ruta: "
  read ruta_user
}

go_start
while :
do
  clear
  echo "~~~~"
  echo "MENU"
  echo "~~~~"

  echo "La ruta ingresada es:  ${ruta_user}"
  echo " a. Comprobar si es un directorio"
  echo " b. Crear el directorio"
  echo " c. listara el contenido "
  echo " 0. Introducir otra ruta... "
  echo " exit "
  read -p "_" user_option
  case ${user_option} in
    a)
      if [ -d ${ruta_user} ]; then
        echo "Esta ruta existe y es un directorio"
      else
        echo "No existe o no es un directorio"
      fi
      echo -n " ..............................PRESS [ENTER]"
      read -p "_"
      ;;
    b)
      if [ -d ${ruta_user} ]; then
        echo "El directorio ya EXISTE"
      else
        mkdir ${ruta_user}
        echo -e "\n\tCarpeta creada"
      fi
      echo -n " ..............................PRESS [ENTER]"
      read -p "_"
      ;;
    c)
      if [ -d ${ruta_user} ]; then
        echo -e "\n"
        ls -lh ${ruta_user}
        echo -e "\n"
      else
        echo -e "\n\t\t :( :( :(  "
      fi
      echo -n " ..............................PRESS [ENTER]"
      read -p "_"
      ;;
    0)
      go_start
      ;;
    exit)
      exit 0
      ;;
    *)
      echo -e "\n\n\t\tla opci[on introducida es incorrecta"
      sleep 1
      go_start
      ;;
  esac
done
