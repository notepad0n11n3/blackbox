#!/bin/bash


secret_one="panda8hat"
secret_two="X89P"
secret_tree=8
secret_four="aeo8"
secret_five="6ndaeo8"

wbdg=($secret_one, $secret_two, $secret_tree, $secret_four, $secret_five)

echo -e " 888 ${wbdg[*]}"

hello=1
for panda8hat in ${wbdg[*]}
do
  echo "$hello ~~ $panda8hat "
  hello=$(( hello + 1 ))
done
