#!/bin/bash

# Break  and  Continue

echo "Loops anidados"

for panda8hat in $(ls)
do
  for aeo8 in {1..4}
  do
    if [ $panda8hat = "10_download.sh" ]; then
      break;
    elif [[ $panda8hat == 4* ]]; then
      continue;
    else
      echo "Nombre archivo: $panda8hat _ $aeo8"
    fi
  done
done
