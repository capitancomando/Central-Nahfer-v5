#!/bin/bash

# Info
clear

function menu_info(){
Info=$(dialog --backtitle "NAHFER HACKING" --stdout --title "INFO" \
    --menu "" 15 51 6 \
    1 "Informacion del Script." \
    2 "Contacto con CAPITÁN COMANDÓ.." \
    3 "Contacto con Z3R07-RED." \
    4 "Volver.")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $Info == 1 ]]; then
   info_script
        elif [[ $Info == 2 ]]; then
contacto_capitan_comando
        elif [[ $Info == 3 ]]; then
         contacto_Z3R07_RED
        elif [[ $Info == 4 ]]; then
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
}
function contacto_capitan_comando(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "CAPITAN-COMANDO" \
    --menu "" 15 51 6 \
    1 "Grupos Nahfer." \
    2 "Facebook." \
    3 "WhatAppp." \
    4 "Youtube." \
    5 "Instagram." \
    6 "Telegram." \
    7 "GitHub" \
    8 "Email" \
    9 "salir")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
   echo " muy pronto"
        elif [[ $menuitem == 2 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 4 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 5 ]]; then
            echo "muy pronto"
       elif [[ $menuitem == 6 ]]; then
echo "Muy Pronto"
       elif [[ $menuitem == 7 ]]; then
      figlet "Github" | lolcat -a
      echo "Github: https://github.com/capitancomando" | lolcat -a
     echo
echo "Enter para volver atras" | lolcat -a
read
termux-open https://github.com/capitancomando
open https://github.com/capitancomando
menu_info
       elif [[ $menuitem == 8 ]]; then
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
}

function contacto_Z3R07_RED(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "Z3R07_RED" \
    --menu "" 15 51 6 \
    1 "Facebook." \
    2 "Youtube." \
    3 "Email." \
    4 "Github." \
    5 "salir")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
   echo " muy pronto"
        elif [[ $menuitem == 2 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 4 ]]; then
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

}

menu_info
