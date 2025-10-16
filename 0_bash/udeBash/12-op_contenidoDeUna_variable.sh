#!/bin/bash

#  ${#var} Devuelve la longitud de la cadena que contiene $var
#  ${var:posici[on} Desde la posici[on indica hasta el final de la cadena
#  ${var:posici[on:longitud} Desde la posici[on con la longitud indicada
#  ${var#patr[on} Elimina desde el inicio, la parte mas corta que coincida con patr[on. Si se usa ## elimina la parte m]as larga
#  ${var%patr[on} Igual que lo anterior pero elimina desde el final de $var 
#  ${var/patr[on/cadena} Sustituye la primera ocurrencia que coincida con patr[on por cadena. ${var//patr[on/cadena} sustituye todas las ocurrencias.


::: IP=$(hostname -i)  # localHost
::: hostname -I        #ip
::: echo $IP
::: echo ${#IP}
::: echo ${IP:4:3}  print 3 primeros digitos
::: echo ${IP#*1}
::: echo ${IP##*1}
::: echo ${IP%1*}
::: echo ${IP%%1*}
::: echo ${IP/1/x}
::: echo ${IP//1/x} :: echo ${IP//[1234]/x}

