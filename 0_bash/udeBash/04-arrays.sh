#!/bin/bash

  # definici[on
  # miArray=(data1 dato2 dato3)

    # ${miArray[indice]} => echo ${miArray[0]} echo ${miArray[1]} echo ${miArray[-1]}

    # ${miArray[*]} === ${miArray[@]}  mostrarTodosLosElementos

    # ${#miArray[@]}  mostrar cantidad de elementos

    # ${!miArray[@]}  mostrar todos los indices

    # unset miArray[indice]    Eliminar una posici[on


mia=(dato1 dato2 dato3)

echo ${mia[0]}
echo ${mia[1]}
echo ${mia[2]}
echo ${mia[-1]}

echo ${mia[*]} # === echo ${mia[@]}

echo la cantidad de elementos es: ${#mia[@]}
echo los indices disponibles son: ${!mia[@]}
unset mia[1]

echo DESPUES DE BORRAR...
echo Nos quedan los elementos: ${mia[@]}
echo La cantidad de elementos es: ${#mia[@]}
echo Los indices disponibles son: ${!mia[@]}


