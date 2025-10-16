#!/usr/bin/bash

for( (i=1; i<=11; i++) );do
  ping -c 1 -4 192.168.0.${i}
done
