#!/bin/bash

# adivina el PID del escript

vizcarra=0
pid_system=$$
intentos=0
while [ ${vizcarra} -eq 0 ]
do
  intentos=$((${intentos}+1))
  echo "=> ${pid_system}"
  echo -e " n[umero de ${#pid_system} digitos :::"
  read -p "El pid del sistema es:.." pid_user
  # validaci[on de datos usuario
  if [ ${#pid_user} -lt ${#pid_system} ]; then
    echo "....ERROR..."
    echo "Te falto $((${#pid_system} - ${#pid_user})) digitos"
  elif [ ${#pid_user} -gt ${#pid_system} ]; then
    echo "....ERROR..."
    echo "TE pasaste por $((${#pid_user} - ${#pid_system})) digitos"
  else
    #
    if [ ${pid_user} -gt ${pid_system} ]; then
      echo " mucho "
      read
    elif [ ${pid_user} -lt ${pid_system} ]; then
      echo " poco "
      read
    elif [ ${pid_user} -eq ${pid_system} ]; then
      echo " CONGRATULATION  :) "
      echo -e "\t .............. ${intentos} intentos.. :u"
      read
    fi
  fi

done
