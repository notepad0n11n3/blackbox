#!/bin/bash


secret_one="panda8hat"
secret_two="X89P"
secret_tree=8
secret_four="aeo8"
secret_five="6ndaeo8"

wbdg=($secret_one, $secret_two, $secret_tree, $secret_four, $secret_five)

#echo -e " 888 ${wbdg[*]}"

options=${#wbdg[@]} #por el # y el @ devuelve cantidaElementosArreglo
sauron=0
echo -e "options: $options, sauronIteraci[on: $sauron" 

while [[ sauron <= options ]]
do
  echo -e "hello hello... ${wbdg[$sauron]}"
  echo -e "\n $sauron"
  sauron=$(( sauron + 1 ))
  echo -e "...$sauron"
done
