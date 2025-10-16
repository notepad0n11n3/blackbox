#!/bin/bash


CONT=0

while [ ${CONT} -lt 5 ]; do
  echo "El contador es ${CONT}"
  CONT=$((${CONT}+1))
done

echo "~~~~~~~~~~~~~~~~~~~~~"

#for sauron in $(seq 5 8); do
#  echo "La variable 1 = ${sauron}"
#done

for sauron in $(ls *.sh); do
  echo "En este curso hemos creado el script ${sauron}"
done
