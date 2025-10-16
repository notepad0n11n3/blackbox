#!/bin/bash

here1=""
#read -p "Ingrese el lugar de llegada: " data_user_llegara
#
#case $data_user_llegara in
#  1)
#    echo "Tienes la medalla de oro"
#    ;;
#  2)
#    echo "Tienes la medalla de plata"
#    ;;
#  3)
#    echo "Tienes la medalla de bronce"
#    ;;
#  [4567])
#    echo "Tienes un diploma"
#    ;;
#  [89|10|11|12|13|14|15|16|17|18|19])
#    echo "Haz quedado en un puesto repetable"
#    ;;
#  *)
#    echo "Gracias por participar"
#    ;;
#esac

here2=""

# numero par o impar 
iter=1

#while [ ${iter} -eq 1 ]
#do
#  read -p "The number is: " number_user
#  if [ ${number_user} -eq 0 ]; then
#    echo " cero es cero"
#    iter=2
#    continue
#  fi
#  if [ $((${number_user}%2)) -eq 0 ]; then
#    echo -e "Si es par"
#    sleep 0.5
#  elif [ $((${number_user}%2)) -ne 0 ]; then
#    echo -e "No es Par"
#    sleep 0.5
#  fi
#
#done

here3=""

#function manoloGo {
#  echo " "
#}
#read -p "Give one number pls: " number_user
#
#for sauron in $(seq 0 10)
#do
#  #manoloGo ${number_user} ${sauron}
#  echo "${number_user}x${sauron} es: $((${number_user}*${sauron}))"
#done
#
#echo "while"
#gorogoro=0
#while [ ${gorogoro} -le 10 ]
#do
#  echo "${number_user} POR ${gorogoro} == $((${number_user}*${gorogoro}))"
#  gorogoro=$((${gorogoro}+1))
#done

here4=""

# ingrese 3 comandos e indique si es un fichero que esta en /bin/ y si ocupa mas de 10kb

function info_OwO {
  if [ -f "/bin/${1}" ]; then
    echo "Esta en /bin/ "
    if [ $(du /bin/${1} | cut -f1) -gt 10 ]; then
      echo "Es mayor de 10k"
    else
      echo "No es mayor de 10k"
    fi
  else
    echo "No se encuentra en /bin/"
  fi
}
for panda8hat in $(seq 1 3)
do
  read -p "Ingrese un comando:... " hello_UmU
  info_OwO ${hello_UmU}
done

