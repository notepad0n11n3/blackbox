#!/bin/bash

# El objetivo del reto es agarrar esas variables y agregar su valor dentro de un archivo que vas a crear en el script. El nombre de este archivo será: logAÑOMESDIAhoraminutossegundos.txt

option=2
result=4

data_system=$(date +%F_%H:%M:%S)

echo -e "$data_system"
echo -e "El valor de option es: $option" >> logAEO8-$(date +%F_%H:%M:%S).txt
echo -e "\nEl valor de result es: $result">> logAEO8-$(date +%F_%H:%M:%S).txt


