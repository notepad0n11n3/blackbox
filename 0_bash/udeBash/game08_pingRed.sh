#!/bin/bash

# ping a los equipos en la red

#     
#         si devuelve true se va a ejecutar, interesante :) 
#     if $(ping -c1 192.168.1.$sauronIpHere &>/dev/null); then
#       COMANDOS
#     fi

for x89p in $(seq 1 254)
do
  echo '~~~~~'
  echo "x89p => ${x89p}"
  ping -c1 192.168.111.${x89p} &>/dev/null
  if [ $? -eq 0 ]; then
    echo "192.168.111.${x89p} ...Activo :) "
  else
    echo "192.168.111.${x89p} ...Inactivo :( "
  fi
  echo "x89p => ${x89p}"
done
