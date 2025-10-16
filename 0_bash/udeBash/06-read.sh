#!/bin/bash
# cara variables tomar[a un parametro(Divisi[on de parametros por un espacio), si parametros > variables, ultimaVar contendra el resto.
  # ::: ./06-read.sh p1 p2 p3 p4 p5 p6 p7

  #  -n  === NO SALTO DE LINEA ECHO... *** *** ***
 #echo -n "introduzca su nombre: "

read -p "introduzca su nombre: " variable1 variable2 variable3
echo "El valor introducido para v1 es:  ${variable1}"
echo "El valor introducido para v2 es:  ${variable2}"
echo "El valor introducido para v3 es:  ${variable3}"
