#!/bin/bash

# Arreglos

arreglos_numeros=(1 2 3 4 5 6)
arreglos_cadenas=(Marco, Antonio, Pedro, Susana)
arreglos_rangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de n[umeros: ${arreglos_numeros[*]}"
echo "Arreglo de Cadenas: ${arreglos_cadenas[*]}"
echo "Arreglo de Rangos: ${arreglos_rangos[*]}"

#Imprimir los tama~os de los arreglos
echo "Tama~o arreglo de n[umeros: ${#arreglos_numeros[*]}"
echo "Tama~o arreglo de cadenas: ${#arreglos_cadenas[*]}"
echo "Tama~o arreglo de rangos: ${#arreglos_rangos[*]}"

#Imprimir la posici[on 3 del arreglo de n[umeros, cadenas y rango

echo "Posici[on 3 arreglos n[umeros: ${arreglos_numeros[3]}"
echo "Posici[on 3 arreglos cadenas: ${arreglos_cadenas[3]}"
echo "Posici[on 3 arreglos rangos: ${arreglos_rangos[3]}"

#A~adir y eliminar valores en un arreglo

arreglos_numeros[7]=20
unset arreglos_numeros[0]
echo "Arreglo de n[umeros: ${arreglos_numeros[*]}"
echo "Tama~o arreglo de n[umeros: ${#arreglos_numeros[*]}"

