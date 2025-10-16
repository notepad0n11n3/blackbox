#!/bin/bash

  #  ${RANDOM} === $RANDOM
    # $(($RANDOM%26))  n[umero aleatorio de 0 a 25, daleAlFinal +1 si quieres del 1 al 25
          #  $((here))

read -p "Introduzca el primer n[umero: " n1
read -p "Introduzca el segundo n[umero: " n2

echo "La suma es $((${n1}+${n2}))"
echo "La resta es $((${n1}-${n2}))"
echo "La multipliaci[on es $((${n1}*${n2}))"
echo "La division es $((${n1}/${n2}))"
echo "La m[odulo es $((${n1}%${n2}))"
