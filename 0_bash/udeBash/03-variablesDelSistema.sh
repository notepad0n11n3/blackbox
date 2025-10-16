#!/bin/bash

              #  MAS VARIABLES PREDEFINIDAS
        #   $0  nombre del script
        #   $$  PID del proceso que se le ha asignado al script en ejecuci[on
        #   $?  Resultado devuelto por el [ultimo proceso ejecutado

              #  VARIABLES DE ENTORNO
        #   

echo El  script $0
echo Lo esta ejecutando $USER
echo Y se le ha asignado el PID:$$
echo Usamos el parametro $1
mensaje="Homa Mundo"
echo Para decir... ${mensaje}
