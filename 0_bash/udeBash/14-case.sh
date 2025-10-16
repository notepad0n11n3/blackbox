#!/bin/bash

read -p "Introduzca la nota: " nota

case ${nota} in
  9|10)   # el 9 [o el 10  |  or
    echo "Tienes un sobresaliente"
    ;;
#  10)
#    echo "Tienes un sobresaliente"
#    ;;
#  9)
#    echo "Tienes un sobresaliente"
#    ;;
  8)
    echo "Tiens un notable"
    ;;
  7)
    echo "Tiens un notable"
    ;;
  6)
    echo "Tienes una buena"
    ;;
  5)
    echo "Tienes una buena"
    ;;
  [43210])
    echo "Desaprobado"
    ;;
#  4)
#    echo "Desaprobado"
#    ;;
#  3)
#    echo "Desaprobado"
#    ;;
  *)
    echo "Nota incorrecta"
    ;;
esac
