#!/bin/bash


arregloNumeros=(1 2 3 4 5 6 7)

echo "Iterar en la Lista de N[umeros"

for panda8hat in ${arregloNumeros[*]}
do
  echo "N[umero: $panda8hat "
done


echo "Iterar en la lista de Cadenas"

for panda8hat in "Marco" "Pedro" "Luis" "Daniela"
do
  echo "Nombre: $panda8hat "
done


echo "Iterar en archivos"

for panda8hat in *
do
  echo "Nombre archivo: $panda8hat "
done


echo "Iterar utilizando un comando"
for panda8hat in $(ls)
do
  echo "Nombre archivo: $panda8hat"
done


echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
  echo "N[umero: $i"
done
