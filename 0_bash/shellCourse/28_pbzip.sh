#!/bin/bash

# Empaquetamiento con el comando pbzip


echo -e "Empaquetar todos los scripts de la carpeta actual"
tar -cvf shellCourse.tar *.sh #empaqueta varios archivos
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2


echo -e "On error write ::: sudo apt-get install pbzip2"
