#!/bin/bash


numero=1

while [ $numero -ne 10 ]
do
  echo "Hello $numero veces"
  numero=$(( numero + 1 ))
done
