menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "AJUSTES DE SONIDOS" \
    --menu "" 10 50 1 \
                    1 "Activar Sonidos" \
                    2 "Desactivar Sonidos" )
chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
echo "activando sonidos"
cd /data/data/com.termux/files/home/Central-Nahfer/datos

mv sonidos-off sonidos

cd /data/data/com.termux/files/home/Central-Nahfer

bash Nahfer-Hacking.sh
        elif [[ $menuitem == 2 ]]; then
echo "desactivando sonidos"
cd /data/data/com.termux/files/home/Central-Nahfer/datos

mv sonidos sonidos-off

cd /data/data/com.termux/files/home/Central-Nahfer

bash Nahfer-Hacking.sh
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
