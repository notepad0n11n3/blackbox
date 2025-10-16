#!/bin/bash

# Empaquetamiento con el comando tar y gzip


echo -e "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh #empaqueta varios archivos


#Cuando se empaqueta con gzip el empaquetamiento anterior se elimina

gzip shellCourse.tar  #empaqueta UN SOLO ARCHIVO

echo -e "Empaquetar un solo archivo. con un ratio 9"
gzip -9 9_options.sh

