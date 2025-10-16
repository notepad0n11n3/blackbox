# !/bin/bash

# El prosor solo quiere un impresi[on de un par de variables.


nombre_carpeta_usuarioInput=$1
#hello=`mkdir $1`

echo -e "Se acaba de crear la carpeta $nombre_carpeta_usuarioInput\n" $(mkdir $nombre_carpeta_usuarioInput) $(ls -lah)
