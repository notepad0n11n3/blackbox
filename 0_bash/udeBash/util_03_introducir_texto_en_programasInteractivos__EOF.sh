#!/bin/bash

 ##  cat > panda8hat.*   # se puede escribir codigo peque~o desde terminal :), Ctrl_C para salir, se eliminar[a la linea focus cuando presiones CtrlC, procura que sea una linea vacia al momento de salir.

 cat > panda8hat <<EOF
esto es un parrafo
esto es otro parrafo
EOF


here2=""

ftp -n miftp <<-EOF # el - ignora las tabulaciones en los comandos, usa tab si se hace mas facil la lectura #
user respaldos RSP-4L2.03
  lcd /var/backups/
mput *.tar.gz
bye
EOF
