#!/bin/bash

# Operaciones de un archivo

echo "Operaciones de un archivo"
mkdir -m 775 backupScripts

echo -e "\nCopiar los scripts del directorio actual a nuevo directorio"
cp *.* backupScripts/
ls backupScripts/

echo -e "\nMover el directorio de backupScripts a otra ubicaci[on: $HOME"
mv backupScripts $HOME 


echo -e "\nEliminar archivos .txt"
rm *.txt
