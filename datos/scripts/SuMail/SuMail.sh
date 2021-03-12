#!/bin/bash

clear
PWD=$(pwd)
source ${PWD}/.tools/doc/var.sh


trap ctrl_c int
function ctrl_c(){
    clear
server
    echo -e "\n${green}[${white}${flicker}*${end}${green}] You are exiting to script. ${end}"
    sleep 3; clear
    exit 1
}
###########
clear
function server(){
server=$(dialog --backtitle "NAHFER HACKING" --stdout --title "SERVIDORES" \
    --menu "" 15 51 6 \
    1 "SERVER 1" \
    2 "SERVER 2" \
    3 "SERVER 3" )
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $server == 1 ]]; then
server="$server1"
            fakemail
        elif [[ $server == 2 ]]; then
server="$server2"
fakemail
        elif [[ $server == 3 ]]; then
server="$server3"
 fakemail
  else
            echo "exit"
              exit  0
        fi
        ;;
    1)
       echo  "cancelado"
        ;;

esac

}
##################################
function fakemail(){
faker=$(dialog --stdout --title "-" --inputbox "ESCRIBE EL CORREO A SUMPLANTAR." 15 71)

fakiado=$(dialog --stdout --title "-" --inputbox "ESCRIBE EL CORREO RECIBIDOR." 15 71)

title=$(dialog --stdout --title "-" --inputbox "ESCRIBE EL ASUNTO:" 15 71)

message=$(dialog --stdout --title "-" --inputbox "ESCRIBE EL MENSAJE:" 15 71)
sleep 1
clear

dialog --title "INFORMACION" --msgbox  "
CORREO SUMPLANTADO: $faker

CORRREO A ENVIAR: $fakiado

ASUNTO: $title

MENSAJE:$message" 15 71
      sleep 1
clear

#############

 PREGUNTA=$(dialog --backtitle "DESEAS ENVIAR EL MENSAJE?" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
      1 "SI ENVIAR." \
     2 "NO ENVIAR." )
 chosen=$?
 
 case $chosen in
    0)
       echo $(clear)
         if [[ $PREGUNTA == 1 ]]; then
	curl --data "destinatario=$fakiado && asunto=$title && mensaje=$message && remitente=$faker" $server 
        clear
        sleep 1
        echo -e "\n${green}[${red}+${green}]${end} ENVIADO. "

     elif [[ $PREGUNTA == 2 ]]; then
   server
   else
              echo "exit"
               exit  0
           fi
          ;;
         1)
          echo  "cancelado"
         ;;
 
 esac
######

}

function main(){
    clear
    server
    sleep 1
    server
}

main
