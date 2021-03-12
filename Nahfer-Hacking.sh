#!/bin/bash
#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
clear
setterm -foreground green
figlet                    "Capitan"
figlet                    "Comando"
setterm -foreground green
echo "
         ██████▓█████▓▓╬╬╬╬╬╬╬╬▓███▓╬╬╬╬╬╬╬▓╬╬▓██
         ████▓▓▓▓╬╬▓█████╬╬╬╬╬╬███▓╬╬╬╬╬╬╬╬╬╬╬╬╬█
         ███▓▓▓▓╬╬╬╬╬╬▓██╬╬╬╬╬╬▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ████▓▓▓╬╬╬╬╬╬╬▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ███▓█▓███████▓▓███▓╬╬╬╬╬╬▓███████▓╬╬╬╬▓█
         ████████████████▓█▓╬╬╬╬╬▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬█
         ███▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ████▓▓▓▓▓▓▓▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         ███▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         █████▓▓▓▓▓▓▓▓█▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
         █████▓▓▓▓▓▓▓██▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
         █████▓▓▓▓▓████▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
         ████▓█▓▓▓▓██▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
         ████▓▓███▓▓▓▓▓▓▓██▓╬╬╬╬╬╬╬╬╬╬╬╬█▓╬▓╬╬▓██
         █████▓███▓▓▓▓▓▓▓▓████▓▓╬╬╬╬╬╬╬█▓╬╬╬╬╬▓██
         █████▓▓█▓███▓▓▓████╬▓█▓▓╬╬╬▓▓█▓╬╬╬╬╬╬███
         ██████▓██▓███████▓╬╬╬▓▓╬▓▓██▓╬╬╬╬╬╬╬▓███
         ███████▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬████
         ███████▓▓██▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓████
         ████████▓▓▓█████▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█████
         █████████▓▓▓█▓▓▓▓▓███▓╬╬╬╬╬╬╬╬╬╬╬▓██████
         ██████████▓▓▓█▓▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬▓███████
         ███████████▓▓█▓▓▓▓███▓╬╬╬╬╬╬╬╬╬▓████████
         ██████████████▓▓▓███▓▓╬╬╬╬╬╬╬╬██████████
         ███████████████▓▓▓██▓▓╬╬╬╬╬╬▓███████████
"
sleep 3

####№#########№#################################################################################

#VARIABLES:
DIALOG=${DIALOG=dialog}
SHOW_REGISTER="True"

if [[ -f "GZ7/goblin_variables" && -f "GZ7/goblin_functions" ]]; then
    source GZ7/goblin_variables
    source GZ7/goblin_functions
else
    echo "[ERROR]: ! files ..."
    echo "";exit 0
fi

if [[ -f "$config_directory/nahfer.conf" ]]; then
    source "$config_directory/nahfer.conf"
else
    file_not_found "nahfer.conf"
fi

if [[ ! -d "$log_directory" ]]; then
    mkdir "$log_directory"
fi

if [[ ! -d "$tmp_directory" ]]; then
    mkdir "$tmp_directory"
fi

source $colors
export DIALOGRC=$config_directory/.dialog.conf

#CTRL+C
trap ctrl_c INT

function ctrl_c(){
echo $(clear)                                                 rm -rf tmp/* 2>/dev/null                                      rm -rf logs/* 2>/dev/null
echo "Program aborted."
# tput cnorm
echo "";exit 1
}

# menu ejemplo en dialog
####№#########№#################################################################################
setterm -foreground green
clear

dialog --infobox "iniciando Consola..." 0 0 ; sleep 2

dialog --infobox "loading..." 0 0 ; sleep 3

play-audio $HOME/Central-Nahfer/datos/sonidos/creador.m4a &
dialog --title "INFORMACION" --infobox "NAHFER HACKING ES UNA HERRAMIENTA DE HACKING
QUE NOS OFRECE VARIAS CATEGORIAS DE HERRAMIENTAS DE HACKING.

CREADOR DEL SCRIPT: CAPITAN COMANDO." 0 0
sleep 10

function menu_inicio(){
menuinicio=$(dialog --backtitle "NAHFER HACKING" --stdout --title "CENTRO" \
    --menu "" 15 51 6 \
    0 "Info" \
    1 "Mundo Hacking." \
    2 "Mundo Sistemas" \
    3 "Mundo Apps" \
    4 "Herramientas" \
    5 "Actualizar Script" )
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuinicio == 0 ]]; then
cd $HOME/Central-Nahfer/datos/.Nahfer-Hacking2
bash info.sh
        elif [[ $menuinicio == 1 ]]; then
principio
        elif [[ $menuinicio == 2 ]]; then
            echo "muy pronto"
        elif [[ $menuinicio == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuinicio == 4 ]]; then
cd $HOME/Central-Nahfer/datos/.Nahfer-Hacking2
bash Herramientas.sh
        elif [[ $menuinicio == 5 ]]; then
cp Nahfer-Hacking.sh $HOME
cd $HOME
rm -rf Central-Nahfer
rm Nahfer-Hacking.sh
git clone https://github.com/capitancomando/Central-Nahfer
 cd Central-Nahfer
 chmod 777 Nahfer-Hacking.sh
bash install.sh
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
#############################################
function principio(){
play-audio $HOME/Central-Nahfer/datos/sonidos/menu.m4a &

menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "CENTRAL NAHFER HACKING" \
    --menu "" 15 51 6 \
    0 "Contacto" \
    1 "Actualizar Script" \
    2 "Nahfer-Tools" \
    3 "Nahfer Hacking" \
    4 "Instalaciones" \
    5 "Ajustes")
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 0 ]]; then
echo "muy pronto"
sleep 3
principio
        elif [[ $menuitem == 1 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 2 ]]; then
          cd $HOME/Central-Nahfer/datos/scripts/Nahfer-Tools
bash Nahfer-Tools.sh
        elif [[ $menuitem == 3 ]]; then
menu_principal
       elif [[ $menuitem == 4 ]]; then
instalaciones_menu
       elif [[ $menuitem == 5 ]]; then
mi_ajustes
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
############### THEMAS DIALOG FONDO ####################


function themas_dialog_ventana(){
    dialogos=$(dialog --backtitle "THEMAS DE NAHFER HACKING." --stdout --title "THEMAS DIALOG." \
     --menu "" 10 50 1 \
     1 "AMARILLO" \
     2 "ROJO" \
     3 "AZUL" \
     4 "CYAN" \
     5 "MAGENTA" \
     6 "VERDE" \
     7 "ATRAS")

 chosen=$?

 case $chosen in
     0)
         echo $(clear)
         if [[ $dialogos == 1 ]]; then
        cd $HOME/Central-Nahfer/datos/banners/dialog/ventana/amarillo
cp .dialogrc $HOME
principio
elif [[ $dialogos == 3 ]]; then
cd $HOME/Central-Nahfer/datos/banners/dialog/ventana/azul
cp .dialogrc $HOME
principio
elif [[ $dialogos == 4 ]]; then
cd $HOME/Central-Nahfer/datos/banners/dialog/ventana/cyan
cp .dialogrc $HOME
principio
elif [[ $dialogos == 5 ]]; then
cd $HOME/Central-Nahfer/datos/banners/dialog/ventana/magenta
cp .dialogrc $HOME
principio
elif [[ $dialogos == 2 ]]; then
cd $HOME/Central-Nahfer/datos/banners/dialog/ventana/rojo
cp .dialogrc $HOME
principio
elif [[ $dialogos == 6 ]]; then
cd $HOME/Central-Nahfer/datos/banners/dialog/ventana/verde
cp .dialogrc $HOME
principio
elif [[ $dialogos == 7 ]]; then
mi_ajustes
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

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


#####funcion
# Aqui comienza el menu Nahfer Hacking
clear
#########-ACORTADOR-TINITY
function acortador_tinity(){
HOLA=$(dialog --stdout --title "ACORTADOR" --inputbox "Escribe una url para acortar" 15 71)

dialog --title "ACORTADOR V3" \
      --prgbox "curl -s http://tinyurl.com/api-create.php?url=$HOLA" 15 61
}
############--PRIMER MENU-########################
function menu_principal(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 71 6 \
    1 "Ingenieria Social" \
    2 "Hackeo a Fuerza Bruta" \
    3 "Web Extrator Info" \
    4 "Ataques DDOS" \
    5 "Vulnerabilidades" \
    6 "Doxing" \
    7 "Herramientas extras"\
    8 "ATRAS.")

chosen=$?

case $chosen in
    0)
        echo $(clear)
         if [[ $menuitem == 1 ]]; then
mi_funcion
        elif [[ $menuitem == 2 ]]; then
mi_funcion_jaja
        elif [[ $menuitem == 3 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/webcraping
bash webcraping.sh
        elif [[ $menuitem == 4 ]]; then
ataques_ddos
        elif [[ $menuitem == 5 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 6 ]]; then
mi_doxing
        elif [[ $menuitem == 8 ]]; then
principio
else
            echo "exit"
            exit 0
        fi
        ;;
    0)
        echo "cancelado .."
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac
}
#########SEGUNDO MENU-2-INGENIERIA SOCIAL###############
function mi_funcion(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "Phishing" \
    2 "Acortador De URL" \
    3 "Enviar Correo" \
    4 "Susplantador de Correos" \
    5 "Correos Temporales" \
    6 "Rastrear IP" \
    7 "Ataque spam SMS" \
    9 "Scannear Numero" \
   10 "Troyanos" \
   11 "Inyeccion apk Metasploit")
chosen=$?

case $chosen in
    0)
        echo $(clear)
          if [[ $menuitem == 1 ]]; then
mis_phishing
        elif [[ $menuitem == 2 ]]; then
acortador_tinity
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 4 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/SuMail
chmo 777 SuMail.sh
bash SuMail.sh
        elif [[ $menuitem == 5 ]]; then
        w3m https://tempail.com/es/
        elif [[ $menuitem == 6 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ISPLocation
bash ISPLocation.sh
        elif [[ $menuitem == 7 ]]; then
            cd $HOME/Central-Nahfer/datos/scripts/quack
bash SMS.sh
        elif [[ $menuitem == 8 ]]; then
ls
        elif [[ $menuitem == 9 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/PhoneScanner
bash PhoneScanner.sh
        elif [[ $menuitem == 10 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/Nahfer-Troyanos
bash troyanos.sh
        elif [[ $menuitem == 11 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/sh
bash Payloands.sh
   else
echo "exit"
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
#############-MENU-3-FUERZA BRUTA##########
function mi_funcion_jaja(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
   0 "list" \
   1 "List password" \
   2 "Multi brute" \
   3 "Facebook Fuerza Bruta 1" \
   4 "Facebook Fuerza Bruta 2" \
   5 "Instagram Fuerza Bruta 1" \
   6 "Instagram Fuerza Bruta 2" \
   7 "Twiter Fuerza Bruta" \
   8 "Gmail Fuerza Bruta" \
    9 "Hotmail Fuerza Bruta" \
  10 "Yahoo Fuerza Bruta" \
  11 "Fuerza Bruta Netflix" \
  12 "Volver al Menu anterior")
chosen=$?

case $chosen in

    0)
        echo $(clear)
        
        if [[ $menuitem == 0 ]]; then
echo "nuy pronto"
        elif [[ $menuitem == 1 ]]; then
echo "muy pronto"
sleep 2
mi_funcion_jaja
        elif [[ $menuitem == 2 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/multi-brute
bash cracker.sh
        elif [[ $menuitem == 3 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/Brute_Force
python2 Facebook-FBnahfer.py
        elif [[ $menuitem == 4 ]]; then
     echo "muy pronto"
sleep 2
mi_funcion_jaja
        elif [[ $menuitem == 5 ]]; then 
     echo "muy pronto"
sleep 2
mi_funcion_jaja
       elif [[ $menuitem == 6 ]]; then
echo "muy pronto"
sleep 2
mi_funcion_jaja
      elif [[ $menuitem == 7 ]]; then
     echo "muy pronto"
sleep 2
mi_funcion_jaja
      elif [[ $menuitem == 8 ]]; then
   echo "muy pronto"
mi_funcion_jaja
      elif [[ $menuitem == 9 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/Brute_Force
bash hotmail.sh
      elif [[ $menuitem == 10 ]]; then
echo "muy pronto"
mi_funcion_jaja
      elif [[ $menuitem == 11 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/Brute_Force
bash netflix.sh
      sleep 2
mi_funcion_jaja
     elif [[ $menuitem == 12 ]]; then
menu_principal


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
###########-MENU-4 ATAQUES--#########
function ataques_ddos(){
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "DDOS ANONYMOUS" \
    2 "DDOS HAMMER" \
    3 "DDOS HULK" \
    4 "DDOS NAHFER" \
    5 "DDOS NAHFER V5" \
    6 "DDOS ATACK" \
    7 "DDOS DRIPPER" \
    8 "VOLVER")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ataques-ddos/DDos-Anonymous
bash anonymous.sh
        elif [[ $menuitem == 2 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ataques-ddos/Hammer
bash hammer.sh
        elif [[ $menuitem == 3 ]]; then
            echo "muy pronto"
        elif [[ $menuitem == 4 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ataques-ddos/DDos-Nahfer
bash install.sh
        elif [[ $menuitem == 5 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ataques-ddos/DDos-NahferV5
bash iniciar.sh
        elif [[ $menuitem == 6 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ataques-ddos/DDos-Attack
python2 ddos-attack.py
        elif [[ $menuitem == 7 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/ataques-ddos/DDoS-Ripper
bash dripper.sh
        else
            echo "menu_principal"
            menu_principal 0
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
##############-----##############

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

###################AJUSTES-##########################
function mi_ajustes(){
play-audio datos/sonidos/ajustes.m4a &
sleep 1
ajustes=$(dialog --backtitle "NAHFER HACKING" --stdout --title "AJUSTES" \
    --menu "" 10 50 1 \
    1 "Informacion android" \
    2 "Sonidos" \
    3 "Temas" \
    4 "Seguridad"\
    5 "ATRAS")
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $ajustes == 1 ]]; then
  neofetch 
echo "CLICK ENTER PARA VOLVER AL MENU PRINCIPAL" | lolcat -a
echo
read
principio
        elif [[ $ajustes == 2 ]]; then
cd $HOME/Central-Nahfer/datos/sonidos
bash sonidos.sh
        elif [[ $ajustes == 3 ]]; then
            menu_temas
        elif [[ $ajustes == 4 ]]; then
            SHOW_REGISTER=""
            source GZ7/.CS07/security/.sec
mi_ajustes
       elif [[ $ajustes == 5 ]]; then
principio
        else
            echo "exit"
        fi
        ;;
    1)
        ;;
    255)
        echo ""
            ;;

esac
}
#########################################################
function menu_temas(){
thema_menu=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "Banner" \
    2 "Ventana" \
    3 "Volver Atras.")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $thema_menu == 1 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/sh
           bash userbanner.sh 
        elif [[ $thema_menu == 2 ]]; then
            themas_dialog_ventana
        elif [[ $thema_menu == 3 ]]; then
             mi_ajustes
        else
            echo "exit"
        fi
        ;;
    1)
        echo "cancelado .."
        ;;
    255)
        echo ""
        ;;

esac


}
########################################################
function mi_doxing(){
clear

doxeos=$(dialog --backtitle "NAHFER HACKING" --stdout --title "DOXING." \
    --menu "" 15 51 6 \
    0 "Crear Plantilla" \
    1 "DoxTracker." \
    2 "DoxWeb." \
    3 "Doxing-Error404." \
    4 "Doxing." \
    5 "Doxing2." \
    6 "DOXing." \
    7 "DFW." \
    8 "INFORMACION."\
    9 "VOLVER ATRAS.")
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $doxeos == 0 ]]; then
ls
        elif [[ $doxeos == 1 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DoxTracker
        elif [[ $doxeos == 2 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DoxWeb
bash DoxWeb.sh
        elif [[ $doxeos == 3 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Doxing-Error404
python2 doxingE404.py
        elif [[ $doxeos == 4 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Doxing
python2 Doxing.py
        elif [[ $doxeos == 5 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Doxing2
python3 Looking_Glass.py2
         elif [[ $doxeos == 6 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DOXing
python3 
         elif [[ $doxeos == 7 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/DFW
python2 Doxing-Framework.py
          elif [[ $doxeos == 8 ]]; then
cd $HOME/Central-Nahfer/datos/scripts/doxing/Information
python Information.py
         elif [[ $doxeos == 9 ]]; then
menu_principal
 else
            echo "exit"
            exit 0
        fi
        ;;
    1)
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac


}

function mis_phishing(){
Phishing=$(dialog --backtitle "NAHFER HACKING" --stdout --title "PIRATERIA HACKING" \
    --menu "" 15 51 6 \
    1 "FotoSploit." \
    2 "Nahfer-Phishing." \
    3 "Blackeye." \
    4 "SocialSploit." \
    5 "Weeman" \
    6 "PhishMailer")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $Phishing == 1 ]]; then
echo "muy pronto"
        elif [[ $Phishing == 2 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 3 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 4 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 5 ]]; then
            echo "muy pronto"
        elif [[ $Phishing == 6 ]]; then
echo "Muy Pronto"
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

if [[ -f GZ7/.CS07/security/.sec ]]; then
    source GZ7/.CS07/security/.sec
else
    file_not_found ".sec"
fi
let try=1
while :
do
PASSWORD01=$($DIALOG --ok-label "Log In" --colors --extra-button --extra-label "About" --backtitle "\Zr$program_name - v$version\Zn Club Secreto 07" \
                    --clear --title "[$USERNAME]" --insecure --passwordbox "Password:" 10 55 3>&1 1>&2 2>&3)

case $? in
    0)
        if [[ "$PASSWORD01" == "$PASSWRD" ]]; then
            let try=0
            break

        else
            $DIALOG --backtitle "$program_name - Security" \
                    --colors --title "[SECURITY]" \
                    --msgbox "¡Acceso denegado! (try $try-3)\n\n\Z1\Zr[INCORRECT]:\Zn PASSWORD" 8 41

            if [ $try = 3 ]; then
                ANSWER02=$($DIALOG --stdout --backtitle "$program_name - Pregunta De Seguridad" \
                        --title "[QUESTION]" \
                        --cancel-label "Exit" \
                        --ok-label "Submit" \
                        --inputbox "$QUESTION" 10 55)
                QUEST=$?
                case $QUEST in
                    0)
                        if [[ "$ANSWER" == "$ANSWER02" ]]; then
                            let try=0
                            principio
                        else
                            echo $(clear)
                            echo -e "${R}Respuesta incorrecta.${W}"
                            echo ""
                            exit 1
                        fi
                        ;;
                    1)
                        echo $(clear)
                        echo "Exiting ..."
                        exit 0
                        ;;
                    255)
                        echo $(clear)
                        echo "Program aborted." >&2
                        exit 1
                        ;;
                esac
            else
                let  try=$(($try+1))
            fi
        fi
        ;;
    1)
        echo $(clear)
        echo "Exiting ..."
        exit 0
        ;;
    3)
        $DIALOG --backtitle "$program_name" \
                --title "ABOUT" \
                --textbox "GZ7/.CS07/about" 12 51
        ;;
    255)
        echo $(clear)
        echo "Program aborted." >&2
        exit 1
        ;;
esac
done

internet_connection
menu_inicio
