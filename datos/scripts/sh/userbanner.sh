#!/bin/bash

clear
 
menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "CENTRAL NAHFER HACKING" \
    --menu "" 15 51 6 \
    1 "BANNER MULTICOLOR" \
    2 "BANNER VERDE" \
    3 "BANNER ROJO" \
    4 "BANNER AZUL" \
    5 "BANNER AMARILLO" \
    6 "salir"\
    7 "BANNER CYAN" \
    9 "Volver A Banner de Fabrica" )
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/banner-multicolor
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer
rm -rf user.txt
   if [[ ! -f user.txt ]]; then
echo "
╭━━━━━━━━━━━━━━╮
┃ ...   ••  ●  |
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃  #    =   >  ┃
╰━━━━━━━━━━━━━━╯" | lolcat
echo "ESCRIBE TU NOMBRE" | lolcat -a
echo "[]
[]" | lolcat -a
 read FAVCAR
echo "$FAVCAR" > user.txt
fi
#######################################################
        elif [[ $menuitem == 2 ]]; then
cd /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/banner-verde
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer
rm -rf user.txt
echo "
╭━━━━━━━━━━━━━━╮
┃ ...   ••  ●  |
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃  #    =   >  ┃
╰━━━━━━━━━━━━━━╯" | lolcat
     echo "ESCRIBE TU NOMBRE" | lolcat -a
echo "[]
[]" | lolcat -a
 read FAVCAR
echo "$FAVCAR" > user.txt

#######################################################
        elif [[ $menuitem == 3 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/banner-rojo
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer                 rm -rf user.txt
rm -rf user.txt
echo "
╭━━━━━━━━━━━━━━╮
┃ ...   ••  ●  |
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃  #    =   >  ┃
╰━━━━━━━━━━━━━━╯" | lolcat
     echo "ESCRIBE TU NOMBRE" | lolcat -a
echo "[]
[]" | lolcat -a
 read FAVCAR
echo "$FAVCAR" > user.txt
################################################################
        elif [[ $menuitem == 4 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/banner-azul
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer
rm -rf user.txt
echo "
╭━━━━━━━━━━━━━━╮
┃ ...   ••  ●  |
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃  #    =   >  ┃
╰━━━━━━━━━━━━━━╯" | lolcat
     echo "ESCRIBE TU NOMBRE" | lolcat -a
echo "[]
[]" | lolcat -a
 read FAVCAR
echo "$FAVCAR" > user.txt

##############################################################
        elif [[ $menuitem == 5 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/banner-amarillo
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer
rm -rf user.txt
   if [[ ! -f user.txt ]]; then
echo "
╭━━━━━━━━━━━━━━╮
┃ ...   ••  ●  |
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃  #    =   >  ┃
╰━━━━━━━━━━━━━━╯" | lolcat
echo "ESCRIBE TU NOMBRE" | lolcat -a
echo "[]
[]" | lolcat -a
 read FAVCAR
echo "$FAVCAR" > user.txt
fi           
########################################################
      elif [[ $menuitem == 7 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/banners/banner-cyan
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/home/Central-Nahfer
rm -rf user.txt
   if [[ ! -f user.txt ]]; then
echo "
╭━━━━━━━━━━━━━━╮
┃ ...   ••  ●  |
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃██████████████┃
┃  #    =   >  ┃
╰━━━━━━━━━━━━━━╯" | lolcat
echo "ESCRIBE TU NOMBRE" | lolcat -a
echo "[]
[]" | lolcat -a
 read FAVCAR
echo "$FAVCAR" > user.txt
fi    

########################################################

elif [[ $menuitem == 9 ]]; then
cd /data/data/com.termux/files/home/Central-Nahfer/datos/textos-temporales
cp bash.bashrc /data/data/com.termux/files/usr/etc
cd $HOME/Central-Nahfer

########################################################
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

