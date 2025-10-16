#!/bin/bash

data_user=0

echo -e "Ingresa un valor del (1-5):\n "
read -n1 -p "hello:  " data_user
echo -e "\n"

case $data_user in
  "1") echo -e "\n The number is $data_user";;
  "2") echo -e "\n The number is $data_user";;
  "3") echo -e "\n The number is $data_user";;
  "4") echo -e "\n The number is $data_user";;
  "5") echo -e "\n The number is $data_user";;
  "*") echo -e "\n you are LOCO...";;
esac
