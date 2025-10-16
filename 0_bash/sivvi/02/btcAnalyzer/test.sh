#!/bin/bash

#function helpPanel(){
#  echo " [e]  unconfirmed_transactions"
#  echo " [h]  extra"
#  echo " [default] nada menu de ayuda "
#  exit 1
#}
#
#function unconfirmedTransactions(){
#  echo "hello unconfirmedTransactions"
#}
##
##parameter_counter=0; while getopts "e:h:" arg; do   # arg ARG almacenara la opci[on del usuario   :h: al estar rodeado de 2: cumple la funcion de *) 
##  case $arg in
##    e) 
##     exploration_mode=$OPTARG; let parameter_counter+=1
##      ;;
##    h)
##      helpPanel
##      echo "h h opiton H H OPTION"
##      ;;
##  esac
##done
##
##if [ ${parameter_counter} -eq 0 ]; then
##  helpPanel
##else
##  if [ "$(echo ${exploration_mode})" = "porlacsm" ]; then
##    unconfirmedTransactions
##  fi
##fi
#
#### MI MENU FUNCIONA DE LA VERGA WE  :) 
##if [ "$1" = "e" -o "$1" = "-e" ]; then
##  echo " option e OPTION E IF if"
##elif [ "$1" = "h" -o "$1" = "-h" ]; then
##  echo " option H ty elif h H"
##else
##  echo "Ninguna de las anteriores"
##  helpPanel
##fi
#
#
#manguito_con_palta=0; while getopts "e:h:" goroDesuNee; do   # arg ARG almacenara la opci[on del usuario   :h: al estar rodeado de 2: cumple la funcion de *) 
#  case $goroDesuNee in
#    e) exploration_mode=$OPTARG; let manguito_con_palta+=1   # $OPTARG creo que optiene el valor de arg por defecto, voy a probar 
#      ;;
#    h) helpPanel
#      ;;
#  esac
#done
#
#tput civis
#
#if [ ${manguito_con_palta} -eq 0 ]; then
#  helpPanel
#else
#  if [ "$(echo ${exploration_mode})" == "unconfirmed_transactions" ]; then
#    unconfirmedTransactions
#  fi
#fi
#

function helpPanel(){
  echo -e "\t\t\t [-e] "
  echo -e "\n\t\t\t\t: unconfirmed_transactions"
  echo -e "\t\t\t [-h]  help menu "
}

function unconfirmedTransactions(){
  echo -e " case a toda potencia"
}


case $1 in
  -e)
    if [ "$2" = "unconfirmed_transactions" ]; then
      unconfirmedTransactions
    fi
    ;;
  -h)
    helpPanel
#    exit 0
    ;;
  *)
    helpPanel
#    exit 0
    ;;
esac
