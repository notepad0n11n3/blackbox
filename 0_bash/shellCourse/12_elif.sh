#!/bin/bash

# if elif elif else fi

edad=0

echo "Go go go... elif elif fi"
read -p "Cual es su edad: " edad

if [ $edad -le 18 ]; then
  echo "Esta muy wawa men"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  # -ge  mayor que...
  echo "Ya esta grande"
else
  echo "La persona es adulto mayor"
fi
