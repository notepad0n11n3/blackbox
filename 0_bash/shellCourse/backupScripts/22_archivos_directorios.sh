#!/bin/bash

# Crear Archivo Carpeta

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
  mkdir -m 755 $2
  echo "Directorio creado correctamente"
  sleep 1
  ls -la $2
elif [ $1 = "f" ]; then
  touch $2
  echo "Archivo creado correctamente"
  sleep 1
  ls -la $2
else
  echo "No existe esa opci[on: $1"
fi
