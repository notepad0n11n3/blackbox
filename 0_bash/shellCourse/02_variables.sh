# !/bin/bash
# Programa para revisar la declaraci[on de variables

opcion=0
nombre=panda8hat

echo "Option: $opcion y Name: $nombre"

## Exportar la variable nombre para que este disponible a los demas procesos
export nombre
export opcion

## Llamar al siguiente escript
./2_variables_2.sh


