#!/bin/bash

      # test expresion  ===  [ expresi[on ]
      # test 10 -gt 20  ===  [ 10 -gt 20 ]
      # test d /etc/    ===  [ -d /etc/ ]

#   int1 -eq int2   int1 es igual que int2        int1 = int2
#   int1 -ge int2   int1 es mayor o igual q int2  int1 >= int2
#   int1 -gt int2   int1 es mayor que int2        int1 > int2
#   int1 -le int2   int1 es menor o igual q int2  int1 <= int2
#   int1 -lt int2   int1 es menor que int2        int1 < int2
#   int1 -ne int2   int1 no es igual que int2     int1 != int2


v1=1
v2=2
if test ${v1} -gt ${v2}; then  #  [ ${v1} -gt ${v2} ]; then
  echo "V1 es mayor que V2"
fi

    # ::: test 1 -ep 2 
    #  ::: echo $?        0 [o 1
        
      
