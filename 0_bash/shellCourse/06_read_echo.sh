#!/bin/bash

#read y $REPLY   like a input

option=0
backupName=""


echo "Programa de utilidades Postgres"
echo -n "Ingresar una opci[on:" ### -n === newLine
read
option=$REPLY

echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY

echo "Opci[on: $option, backupName: $backupName"
