#!/bin/bash

mC="\e[3;107;35m" # negrita/backgroundBlanco/textoMorado
bC="\e[30m"
eC="\e[0m"
#color savii
yC="\e[0;33m\033[1m"
rC="\e[0;31m\033[1m"
endC="\033[0m\e[0m"

    ## EJECUCIONES AL TERMINAL EL SCRIPT DE MANERA NORMAL O FORZADA

  trap ' echo -e "\t\t\t${mC}........PROGRAMA INTERRUMPIDO...!!! !!! !!! ${eC}"; exit 69' INT
  trap ' echo -e "\t\t\e[1;107m finalizando de manera normal\e[0m"' EXIT


        ## FUNCIONES 
function helpPanel(){
  clear
  echo -e "\n\t ${mC}Centro de ayuda para gente sabro_sa\e[0m${bC} <3 <3 <3 ${eC}"
  echo -e "**********************************************************************************\n"

  sleep 1
  echo -e "${yC}~~~Exploration Mode-${endC}"
  echo -e "\t -e \t\" \t\t\t \"          ${rC}don't use \" \" around the option pls :)${endC}"
  echo -e "\t\t unconfirmed_transactions \t==> Transacciones no confirmadas."
  echo -e "\t\t\t inspect \t\t==> Inspeccionar un has de transacci[on."
  echo -e "\t\t\t address \t\t==> Inspeccionar una transacci[on de direcci[on.\n"

  
  sleep 1
  echo -e "${yC}~~~Limitar el n[umero de resultados-${endC}"
  echo -e "\t -n \" \"   ... 100 max.\n"

  echo -e "${yC}~~~Proporcionar el identificador de transacci[on-${endC}"
  echo -e "\t -i \"IdentificadorDtransacci[onHERE\"\n"

  sleep 1
  echo -e "${yC}~~~Proporcionar una direcci[on de transacci[on-${endC}"
  echo -e "\t -a \"Direcci[on de transacci[onHERE\"\n"

  echo -e "${yC}~~~Mostrar este panel de ayuda~~~${endC}"
  echo -e "\t -h "
   
}


sleep 2

    ## ${OPTARG} obtendra lo que viene despue de cualquier parametro.  -h "estoNene...Esto"
elon=0
while getopts "e:n:i:a:h:" desuNee # Parametros -e -n -i -a  gracias a getopts
do
  case ${desuNee} in
    e)
      exploration_mode=${OPTARG}
      let elon+=1
      ;;
    n)
      number_output=${OPTARG}
      let elon+=1
      ;;
    i)
      inspect_transaction=${OPTARG}
      let elon+=1
      ;;
    a)
      inspect_address=${OPTARG}
      let elon+=1
      ;;
    *)
      helpPanel
      ;;
  esac
done
