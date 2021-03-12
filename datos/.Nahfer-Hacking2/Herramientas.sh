#!/bin/bash
# Codigo Codificado por:Capitan comando o llamado Comander 747
clear

menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "ADMINISTRADOR DE ARCHIVOS.." \
    2 "ANALIZADOR DE ARCHIVOS." \
    3 "VOLVER." )

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
cd $HOME
   mc
        elif [[ $menuitem == 2 ]]; then
                  cd $HOME/Central-Nahfer/datos/scripts/Cleaner-007
                 chmod 777 cleaner-007.sh
             bash cleaner-007.sh
             cd ../../../
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        else
            echo "exit"
            exit 0
        fi
        ;;
    1)
        echo "cancelado .."
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac




