#!/bin/bash

# author: x89p panda8hat 6ndaeo8 aeo8

git clone https://github.com/s4vitar/htbExplorer.git >/dev/null 2>&1

if [ $(echo $?) -eq 0 ]; then
  echo -e "\n\n\n\t\t\t Repositorio Clonado con exito UmU"
else
  echo -e "\n\n\n\t\t\ta ocurrido un error :( "
fi
