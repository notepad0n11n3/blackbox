#!/bin/bash

# imprimir 2 variables, generar logs con las variables, empaquetar el/los log en cualquier formato de compresi[on, generar una clave y pasar el archivo a otro pc usando SSH, cuando se seleccione la opcion 7.Backup de Informaci[on


var_one="panda8hat"
var_two="aeo8"

while :
do
  clear
  echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo -e "VAMOS A JUGAR CON BASHSCRIPTING "
  echo -e "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo -e "  Menu principal "

  echo -e "1. ni idea"
  echo -e "2. vamo go"
  echo -e "3. relleno"
  echo -e "7. Backup"

  echo -e "...Ingrese una opcion: \n"
  read -n1 -p "     :::==> " sauron
  sleep 1
  clear

  # VALIDACI[ON DE DATOS INGRESADOS
  case $sauron in
    1)
      echo "Ni idea"
      sleep 1
      clear
      ;;
    2)
      echo "Vamo go..."
      sleep 1
      clear
      ;;
    3)
      echo "Mega relleno"
      sleep 1
      clear
      ;;
    7)
      echo "Generando Backup... OwO...!!! "
      sleep 1
      echo "   desu desu nee..."
      sleep 1
      echo "    desu desu nee..."
      sleep 1
      echo "       desu desu nee..."
      sleep 1
      echo "          desu desu nee..."
      echo " - - - - - - - - - - - "
      
      # CREACI[ON DE LOGS CON FECHA EN EL NOMBRE DEL ARCHIVO
      
      echo "$var_one 888 $var_two" >> ./prac6log/logPRAC_$(date +%F_%H:%M:%S).txt
      echo -e "\n Archivo Log Creado"
      clear

      #COMPRESI[ON DE TODOS LOS ARCHIVO.LOG CON CIFRADO
      echo -e "\n ...now Comprimiendo el archivo"
      sleep 2
      echo ".. ... ..."
      echo -e "goro goro goro..."
      sleep 1
      echo -e "\n goro goro goro..."
      sleep 1
      echo -e "\n   goro goro goro..."
      sleep 1
      clear
      echo -e "\n @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "
      zip -e ./prac6log/logPRAC_compress.zip ./prac6log/logPRAC_*.txt
     
      echo -e "Compresi[on del archivo de Log READY...\n "
      read -p "... press Enter pls . . . " logZipReady

      #ENVIO DE ARCHIVO COMPRIMIDO CON rsync -avz rutaCarpeta
      host=""
      usuario=""
      envioYN=""
      echo -e "Envio de logs comprimidos con rsync\n"
      read -p "Ingrese el host: " host
      read -p "Ingrese el usuario: " usuario
      clear
      echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      echo -e "!...Los datos ingresados son: \n Host:=>> $host \n Usuario:=>> $usuario "

      # PREGUNTA FINAL PARA ENVIAR LOS DATOS
      read -p "PRESS... (1).Para enviar  (2).Para cancelar  ::   " envioYN
      if (( $envioYN == 1 )); then
        clear
        echo -e "\nDesu nee... \n ____ enviando...!!!"
        rsync -avz $(pwd)/prac6log/*.zip $usuario@$host:/home/user/platziBash 
      elif (( $envioYN == 2 )); then
        clear
        echo -e "??..Cancelando el envio. don't worry... BE HAPPIE"
      else
        clear
        echo -e "Are you TERMINATOR?"
      fi

      read -p " Bye f***ing #?*... see you later.."
      #exit 0
      ;;
    *)
      clear
      echo "opcion incorrecta"
      sleep 1.5
      exit 0
      ;;
  esac
  shift
done
