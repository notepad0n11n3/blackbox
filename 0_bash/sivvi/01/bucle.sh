#!/bin/=ash

contador=1

cat /etc/passwd | while read sauron; do
  echo " Linea ${contador}: ${sauron}"
  let contador+=1 # contador = contador + 1 
done


while read aeo8; do
  echo " Estamos aqui: ${aeo8}"
done < /etc/passwd

# ONE LINE ONE LINE ONE LINE ::: ::: en terminal
ngs data.txt | grep "===" | while read gorogoro; do echo -e "x89p ${contador}: ${gorogoro}"; let contador+=1; done





