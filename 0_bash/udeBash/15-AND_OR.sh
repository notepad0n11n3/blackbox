
      ::: echo $?



  ::: ping -c1 www.google.com &> /dev/null && echo "Google Activo"

  ::: ping -c1 www.google.com &> /dev/null || echo "Google Inactivo"
