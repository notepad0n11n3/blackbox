# !/bin/bash

#Programa para ejemplificar el paso de argumentos


nombreCurso=$1
horarioCurso=$2

echo "Ingresa los parametros entre comillas por ahora porfa :'u"
echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El n[umero de parametros enviados es: $#"

echo "Los parametros enviados son: $*"



#  Identificador      Descripci[on
#      $0             El nombre del script
#    $1 al ${10}      El n[umero de argumento, si son + de 1 argumento se utiliza llaves
#      $#             Contador de argumentos
#      $*             Refiere a todos los argumentos
