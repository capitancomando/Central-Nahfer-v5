#!/bin/bash

clear

numero=$(dialog --stdout --title "-" --inputbox "ESCRIBE EL NUMERO,CON CODIGO DEL PAIS Y  SIN ESPACIO." 15 71)

dialog --title "INFORMACION DEL NUMERO" \
      --prgbox "python3 P.py -n $numero" 30 80
