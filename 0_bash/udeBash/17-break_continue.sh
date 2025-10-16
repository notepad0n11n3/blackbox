#!/bin/bash



for sauron in $(ls /var/log); do
  if [ $(du /var/log/${sauron} | cut -f1) -eq 0 ]; then
    echo "El ${sauron} esta vacio"
    break
  fi
done
