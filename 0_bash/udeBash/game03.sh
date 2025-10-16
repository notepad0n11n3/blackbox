#!/bin/bash

here1=""
    ## divisible por 2
#echo -n "Enter a number: "
#read number_user
#
#resultado=$(( ${number_user} % 2 ))
#if [ ${resultado} -eq 0 ]; then
#  echo "si es divisible por 2 :) "
#else
#  echo " NEL NEL NEL NEL NEL "
#fi

here2=""
    ## Recibe 2 datos, indique cual es m[as grande ( POR PARAMETROS )
#number_one=$1
#number_two=$2
#if [ ${#number_one} -gt ${#number_two} ]; then
#  echo "${#number_one} number_one papu"
#  echo "${#number_two} number_two papu"
#  echo "a mayor que b"
#elif [ ${#number_one} -lt ${#number_two} ]; then
#  echo "${#number_one} number_one papu"
#  echo "${#number_two} number_two papu"
#  echo "b es mayor que a"
#elif [ ${#number_one} -eq ${#number_two} ]; then
#  echo "${#number_one} number_one papu"
#  echo "${#number_two} number_two papu"
#  echo "SON IGUALES MEN"
#fi

here3=""
    ## Recibe 2 datos, indique cual es m[as grande ( POR READ )
#echo -n "Ingrese el primer dato: "
#read data_user_one
#
#echo -n "Ingrese el segundo dato: "
#read data_user_two
#
#if [ ${#data_user_one} -gt ${#data_user_two} ]; then
#  echo " ${data_user_one} es mayor que ${data_user_two}"
#elif [ ${#data_user_one} -lt ${#data_user_two} ]; then
#  echo " ${data_user_one} es MENOR que ${data_user_two}"
#elif [ ${#data_user_one} -eq ${#data_user_two} ]; then
#  echo " ${data_user_one} es IGUAL a ${data_user_two}"
#fi


here4=""

#read -p "Adivina el usuario men: " user_case
#
#user_comand=$(whoami)
#user_sysVar=$USER
#echo -e "\t $user_case ~~~~ $user_comand\n"
#if [ ${user_case} = $user_comand ]; then
#  echo " ${user_case} vamo a ver... $(whoami) ok..."
#else
#  echo "Nell nell neLL..."
#fi

here5=""

user_system=$USER
user_cero=""
read -p "The user is:... " user_user
if [ ${#user_user} -gt ${#user_cero} ]; then
  echo "userData=${#user_user}|${user_user} , userCero=${#user_cero}"
  echo "Es mayor a 0 "
  if [ ${user_user} == ${user_system} ]; then
    echo "OK Ok ok... ${user_system}.SH = ${user_user}.user "
  else
    echo "Try again... :( "
    echo " user incorrect "
  fi
else
  echo "No se a ingresado nada, intentalo nuevamente... :( "
fi


