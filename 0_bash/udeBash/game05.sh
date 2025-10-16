#!/bin/bash

#  Que diga si se han introducido parametros o no
#  Que genere un n[umero aleatorio y pida al usuario otras 2 cifras distintas. El script dira si el n[umero generado es divisible por las dos cifras, por un o por ninguna


if [ $# -eq 0 ]; then
  echo "No se a ingresado ning]un parametro... :( "
else
  echo "Los parametros ingresados fueron $# "
fi

read 
clear
echo -e "\n\n\n"
number_script=$(($RANDOM%40))

echo "////////////   ${number_script}"
echo "....${number_script}"
echo -n -e "Ingrese el primer n[umero:..."
read user_data1

echo -e -n "\n Ingrese el segundo n[umero:..."
read user_data2

clear && echo -e "\n" && echo "El n[umero generado es ${number_script}" && echo -e "\n\n"


test_1=$((${number_script}%${user_data1}))
test_2=$((${number_script}%${user_data2}))

if [ ${test_1} -eq 0 -a ${test_2} -eq 0 ]; then
  echo "The random number is div for ${user_data1} and ${user_data2}"
#  sleep 1
#  exit 0
elif [ ${test_1} -eq 0 ]; then
  echo " The randon number is div for the firts number ${user_data1}"
elif [ ${test_2} -eq 0 ]; then
  echo " The random number is div for the last number ${user_data2}"
else 
  echo "No se divisible por ninguno"
fi
