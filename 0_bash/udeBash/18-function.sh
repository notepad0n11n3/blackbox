#!/bin/bash
# Permite realizar tareas recursivas. La funcion puede llamarse a si misma 

here1=""
#    function hello () {
#      echo "hello hello $1"
#    }
#
#    hello panda8hatX89P




here2=""

## ::: addgroup alumnos
## ::: useradd -d /home/goro -m -g alumnos goro
##    -d: directorioPersonal -m: creaLdirectorio -g: grupo

function infoX89P {
  #echo "$1" # variable sauron del for "usuario"

  OLDIFS=$IFS
  IFS=":"   # CAMBIAMOS EL SEPARADOS GLOBAL('Espacio') POR EL :
      # separador de campos ahora no por 'espacio' =>  ":"  para el ARRAY  usuario:x:id:gid
  user=($1);

  echo "*** INFORMACI[ON PARA ${user[0]} ***"
  echo "El espacio ocupado por su directorio personal ${user[5]} es: " $(du -sh ${user[5]} | cut -f1) #IFS IFS IFS here here HERE HERE fuking cut :)

  if $(who | egrep "^${user[0]}\b" &> /dev/null); then
    echo "Actualmente esta en el sistema"
  else
    acceso=$(grep opened.*${user[0]} /var/log/auth.log | tail -n 1 | tr -s " ")
    if [ -z "${acceso}" ]; then #...!!! sin "" da error... ni idea men :u sera x str???
      echo "Nunca ha estado en el sistema"
    else
      echo "Y su [ultimo acceso fue: ${acceso}"
    fi
  fi
  #IFS=" "  # REGRESAMOS EL ESPACIO COMO SEPARADOR GLOBAL PARA EVITAR ERRORES
  IFS=$OLDIFS
}

read -p "Introduzca el nombre del grupo: " grupo

gid=$(egrep ^${grupo}: /etc/group | cut -d":" -f3)

usuarios=$(egrep "^\w+:x:\w+:${gid}:" /etc/passwd)

if [ -z "$usuarios" ]; then
  echo "No se han encontrado usuarios"
  exit 1
fi

for sauron in ${usuarios}
do
  infoX89P ${sauron}
done


