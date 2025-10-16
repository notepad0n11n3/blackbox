#!/bin/bash

# only    read  

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una Opci[on:" option 
read -p "Ingresar el nombre del archivo del backup:" backupName

echo "Opci[on:$option , backupName:$backupName"
