#!/bin/bash

# Transferir por la red utilizando el comando rsync
# con opciones de empaquetamiento para optimizar la velocidad de transferencia


echo -e "Empaquetar todos los scripts en esta carpeta ya transferirlos por la red a otro equipo"

host=""
usuario=""

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario
echo -e "\nEn este momento se procedera a empaquetar el contenido y transferir seg[un los datos ingresados"

rsync -avz $(pwd) $usuario@$host:/home/user/platziBash
