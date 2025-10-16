#!/bin/bash


#   1.- Comprobar si hay conexi[on con www.kali.org
#   2.- Descargar un fichero y mostrar un mensaje si ha ido bien
#   3.- Decir si el fichero es grande o peque~o

#  &>  informaci[on normal       2&>  informaci[on Error
#  exit 1    sale del programa


ping -c1 www.kali.org &> /dev/null && echo "ping OK" || exit 1
wget https://images.kali.org/virtual-images/kali-linux-2021.2-virtualbox-amd64.ova && echo "..burningArea x89p panda8hat"

