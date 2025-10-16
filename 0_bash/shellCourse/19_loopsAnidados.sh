#!/bin/bash

# Loops anidados

echo "Loops anidados"

for panda8hat in $(ls)
do
  for aeo8 in {1..4}
  do
    echo "Nombre archivo: $panda8hat _ $aeo8"
  done
done
