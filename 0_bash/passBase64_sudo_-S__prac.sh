#!/bin/bash

        ## AUTO---    APT UPDATE  APT-GET FULL-UPGRADE      oneline :)
  # Es suficiente 1 solo ingreso de clave root para las demas ejecuciones :) 
  # obviamente no te va a dejar abrir la carpeta /root/ si no vuelves a ingresar la clave :u
#ssudo="password_userSudo_here_base64";echo ${ssudo}|base64 -d | sudo -S apt update -y #&& clear && echo -e "\n\n\n\t\t\t full-upgrade GO \n\n" && sleep 2 && sudo apt-get full-upgrade -y  


echo -e "\n\n\t\t GOGOGOOGOGOGOGOGOGOGOOGOGOGOG..... \n\n\t\t"


newDes="SnM0Z3MpbXMsoGFjozhrYWulK" # password en base 64 here

#echo "${newDes} | base64 -d "   | sudo -S cat /root/roti.txt    ##  Ac[a tiene un output limpio, solo el cat del archivo en /root/
echo "${newDes}" | base64 -d | sudo -S cat /etc/passwd > deleteHere.tmp && if [ $(wc -w deleteHere.tmp | awk '{print $1}') -ge 1 ]; then clear; cat deleteHere.tmp; else clear;echo -e "\n\n\t\t error error... "; fi
              # ERROR ERROR, ME DABA ERROR EL LA [ULTIMA LINEA DEL ARCHIVO, TODO NO CERRAR EL IF    puto  fifi  FI :U

echo -e "\n\n\n\t\t\t"
read -p ".....................................PRESS [ENTER] to continue:"
clear
echo -e "\n\n\t\t\t\t Opcion 1 para eliminar archivo temporal\n\n\t\t\t\t Opci[on 2 para NO eliminar archivo temporal"
read optionUser

case ${optionUser} in
  1)
    clear
    rm deleteHere.tmp
    echo -e "\n\n\t\tArchivo .tmp eliminado"
    exit 0
    ;;
  2)
    clear
    echo -e "\n\n\t\tAqu[i tienes el archivo temporal :) "
    ls -lah deleteHere.tmp
    read
    exit 0
    ;;
  *)
    echo "\n\n\t\t\t Opci[on incorrecta cms :u  :U "
    exit 69
    ;;

esac

#echo ${pass}|base64 -d
#echo "${pass}" | sudo -S apt update -y && echo "${pass}" | sudo -S apt-get full-upgrade -y && clear && echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t nightmare Ready... ... ..."

echo -e "\n\n\n\t\t\t finale \n\n"
#sudo su 
