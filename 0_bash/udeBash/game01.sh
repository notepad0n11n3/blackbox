#!/bin/bash

# intro 5 parametros men ./**.sh here here here


echo -n "oh... ok..."
read var1 var2 var3 var4 var5

echo -n -e "La cantidad de datos es: ${#}" 
echo -e "| | ... $# parametros ingresados"
echo -e "El primer parametro es: ${var1}"
echo -e "El segundo parametro es: ${var2}"
echo -e "El tercer parametro es: " ${var3}

