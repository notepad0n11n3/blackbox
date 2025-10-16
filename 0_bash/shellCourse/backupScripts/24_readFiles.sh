#!/bin/bash


echo "Leer en un archivo"
cat $1

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\n Almacenar los valores en una variable"
varlorCat= cat $1
echo "$varlorCat"


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacio en blanco
# al inicio al final se recorten

echo -e "\n Leer archivos l[inea por l[inea utilizando while"

while IFS= read panda8hat
#while read panda8hat      :: eliminar los espaciosIdentaci[on del texto a leer
do
  echo "$panda8hat"
done < $1

