#!/bin/bash
#  Parametros...
        
            
              #                         ./script.sh -n -d -z
              #         $n  parametro n     
              #         $*  todos los parametros. se representan en una sola cadena de caracteres
              #         $@  todos los parametros. Es una lista con un elemento por cada parametro recibido
              #         $#  indica cantidad de parametros ingresados al script, ser[a una cifra



echo "El primer parametro es $1"
echo "El n[umero de par[ametros ha sido $#"
echo "Todos los parametros son:: $*"
echo "...Esto es dolar arroba:: $@"
