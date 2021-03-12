#!/bin/bash

# Creador: Capitan Comando 
# lider supremo Capitan Comando

clear

setterm -foreground green
function banner(){
echo ""
figlet "WEB" | lolcat -a
figlet "CRAPING" | lolcat -a
echo ""
echo "#~> Comunity Hacking Nahfer" | lolcat -a
echo ""
echo "#~>Create by: Capitan Comando" | lolcat -a
echo ""
echo "Lider supremo de Nahfer:CAPITAN COMANDO" | lolcat -a
echo
echo

}

final="\033[0m"; verde="\033[1;32m"; rojo="\033[0;32m"; blanco="\033[1;32m"; naranja="\033[0;32m"; negrita="\033[32m"; cursiva="\033[32m"; parpadeo="\033[32m"



trap ctrl_c int

function ctrl_c(){
	clear;
	banner
	echo ""
	echo -e "${verde}[${blanco}${parpadeo}*${final}${verde}] Usted esta saliendo del programa. ${blanco}";
	sleep 3
	clear;
	exit
}

function menu_principal() {
	clear; sleep 0.3s; banner; sleep 0.6s
	echo -e "
[1] Cabezeras HTTP > Headers.
[2] Robots.txt.
[3] Listar Subdominios y extraer links.
[4] Puertos.
[5] Whois.
[6] Dominio a IP.
[7] web Craping.
[8] Scanner web avanzado.
[9] Extras.
[10] Descargar Archivos web.
[11] RED_HAWK
[12] Optiva Framework
[13] Bughunter
[14] Dirsearch
[15]
[16]
[17]
[18]
[19]
[20]" | lolcat -a
	read -p $'\t\t\033[1;32m[\033[0;37m\033[5m?\033[0m\033[1;32m] : \033[0m' opcion
	
		case $opcion in 

			1)clear; banner
				read -p $'Inserta una web\t[\033[0;37m\033[5m?\033[0m\033[0m] : ' web
				curl -I $web 2> /dev/null > $web.txt 
				cat $web.txt; sleep 0.6s
				echo -e "\n${verde}[${blanco}*${verde}] ${blanco}Se ha guardado en raíz${final}"; sleep 0.9s;
echo $web >>$web.txt
dialog --title "archivo fstab" --textbox $web.txt 15 70
			;;

			2)clear; banner
				read -p $'\nInserta una web\t[\033[0;37m\033[5m?\033[0m\033[0m] : ' web
				curl -L $web/robots.txt 2> /dev/null | sort >> $web.txt
				cat $web.txt; sleep 0.9s
				echo -e "\n${verde}[${blanco}*${verde}] ${blanco}Se ha guardado en raíz${final}"
echo $web >>$web.txt
dialog --title "archivo fstab" --textbox $web.txt 15 70
			;;
			5)clear
echo $web >>$web.txt
dialog --title "archivo fstab" --textbox $web.txt 15 70				banner
				read -p $'\nInserta Una Web o IP\t[\033[0;37m\033[5m?\033[0m\033[0m] : ' web
				curl https://api.hackertarget.com/whois/?q=$web 2> /dev/null >> $web.txt; cat $web.txt
				echo -e "\n${verde}[${blanco}*${verde}] ${blanco}Se ha guardado en raíz${final}"; sleep 0.9s
	
		;;
			6)clear
				banner
				read -p $'Inserta una web\t[\033[0;37m\033[5m?\033[0m\033[0m] : ' webip
ping $webip
				host $webip  2> /dev/null > $webip.txt; sleep 0.9s; cat $webip.txt		
	echo -e "\n${verde}[${blanco}*${verde}] ${blanco}Se ha guardado en raíz${final}"
echo $webip >>$webip.txt
dialog --title "archivo fstab" --textbox $webip.txt 15 70
			;;
			3)clear; banner
				read -p $'Inserta una web\t[\033[0;37m\033[5m?\033[0m\033[0m] : ' subdomain
				contador=1
				echo -e "\n\t${rojo}Lista de subdominios: \n" > $subdomain.txt
				curl https://api.hackertarget.com/hostsearch/?q=$subdomain 2> /dev/null | sort | uniq -u | while read linea; do
				echo -e "${verde}[${blanco}*${verde}] ${final}${rojo}Subdominio${final} $contador: $linea"  >> $subdomain.txt
				let contador+=1; done
				echo -e "\n\n\t${rojo}Lista de paginas extraidas: ${final}\n\n" >> $subdomain.txt
				curl https://api.hackertarget.com/pagelinks/?q=$subdomain 2> /dev/null | sort | uniq -u |  while read linea2; do
				echo -e "${verde}[${blanco}*${verde}] ${final}${rojo}PAG. ${final}Extraida $contador: $linea2" >>  $subdomain.txt
				let contador+=1; done
				cat $subdomain.txt
				echo -e "\n${verde}[${blanco}*${verde}]${final} EL proceso se llevo con exito, se ha guardado en raiz${final}"
				sleep 1.0s
echo $sudomain >>$sudomain.txt
dialog --title "archivo fstab" --textbox $sundomain.txt 15 70
			;;
			4)clear
				banner
				read -p $'Inserta Una Web. [\033[0;37m\033[5m?\033[0m\033[0m] : ' port
				echo -e "${rojo}Los puertos encontrados son:${final} " >> $port.txt
				curl https://api.hackertarget.com/nmap/?q=$port 2> /dev/null >> $port.txt
				sleep 1.0s; cat $port.txt
				echo -e "\n${verde}[${blanco}*${verde}]${final} EL proceso se llevo con exito, se ha guardado en raiz${final}"
echo $port >>$port.txt
dialog --title "archivo fstab" --textbox $port.txt 15 70
	;;
			7)clear
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/webcraping/herramientas
python2 Real-DNS
				;;
                        8)clear                                

                         cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/scanneos-web/ejecutables
                         bash scanneos-web.sh			
;;
             

                        11) clear
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/webcraping/herramientas/RED_HAWK
php rhawk.php ;;

                        12) clear
cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/webcraping/herramientas/Optiva-Framework
clear
python2 optiva.py ;;
     
                       13) clear

cd /data/data/com.termux/files/home/Central-Nahfer/datos/scripts/webcraping/herramientas/bughunter
clear
python2 bughunter.py
;;
                       14) clear
cd $HOME/Central-Nahfer/datos/scripts/webcraping/herramientas/dirsearch
bash Pregunta.sh
;;
         *) clear
				banner
				echo -e "${verde}[${blanco}*${verde}]${blanco} La opcion que ingreso no existe"
				sleep 1.3s; clear; dox_2
			;;
		esac 
}



clear
sleep 1.0s
clear
sleep 0.5
menu_principal

setterm -foreground green
