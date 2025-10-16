#!/bin/bash

#    str1 = str2    str1 es igual que str2
#    str1 > str2    str1 es mayor que str2
#    str1 < str3    str1 es menor que str2
#    str1 != str3   str1 NO es igual que str2
#    -n str         Cierto si la longitud de la cadena es distinta a 0
              #  and    or  
#  expresion1 -a expresion2  Cierto si exp1 y exp2 son ciertas las dos
#  expresion1 -o expresion2  Cierto si exp1 [o exp2 son ciertas algunas de ellas

here=1
#v1="a"
#v2="b"
#if [ ${v1} = ${v2} ] ; then  
## [ ${v1}=${2} ] siempre retorna verdadero al ser unaAsignaci[on
#  echo "V1 es igual a V2"
#fi

#     str1 = str2   Comparaci[on   !!!
#     str1=str2     Asignaci[on    !!!

here=2

n1=$(($RANDOM%30))

if [ ${n1} -ge 10 -a $n1 -le 20 ]; then
  echo "Las referencias de los comandos estan muy f[aciles"
  echo " : : : ${n1} esta entre 10 y 20 :) "
else
  echo " :( :( :( :( :( "
fi
