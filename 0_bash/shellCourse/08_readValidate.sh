#!/bin/bash

# validaci[on de informaci[on por n[umero/cantidad de caracteres

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de informaci[on de un solo caracter
read -n1 -p "Ingresar una Opci[on:" option # -n espera a dar <CR>, -n1 espera un solo caracter
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"

echo "Opci[on:$option , backupName:$backupName"

read -s -p "Ingrese la clave" clave #-s  silent
echo -e "\n" # -e interpreta el \n , no lo imprime
echo "Clave: $clave"
