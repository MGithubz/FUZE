#!/bin/bash
#
# FUZE.sh [version.1]
PS3='root@D0loresH4ze:~/FUZE.sh# '
options=("Monitor ON" "Monitor OFF" "ifconfig wlan0mon down" "ifconfig wlan0mon up" 
"ifconfig wlan0 down" "ifconfig wlan0 up" "Set custom MAC" "Set random MAC" "Reset MAC" 
"Restart Net-Manager" "Start Apache2" "Stop Apache2" 
"Restart Apache2" "Edit Index.html" "Own IP Check" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Monitor ON")
            clear && airmon-ng start wlan0
            ;;
        "Monitor OFF")
            clear && airmon-ng stop wlan0mon
            ;;
        "ifconfig wlan0mon down")
            clear && ifconfig wlan0mon down
            ;;
        "ifconfig wlan0mon up")
            clear && ifconfig wlan0mon up
            ;;
        "ifconfig wlan0 down")
            clear && ifconfig wlan0 down
            ;;
        "ifconfig wlan0 up")
            clear && ifconfig wlan0 up
            ;;
        "Set funny MAC")
            clear && macchanger -b -m  wlan0mon
            ;;
        "Set random MAC")
            clear && macchanger -b -r wlan0mon
            ;;
        "Reset MAC")
            clear && macchanger -p wlan0mon
            ;;
	"Restart Net-Manager")
	    clear && service network-manager restart
	    ;;
        "Start Apache2")
            service apache2 start 
            ;;
        "Stop Apache2")
            service apache2 stop
            ;;
        "Restart Apache2")
            service apache2 restart
            ;;
        "Edit Index.html")
            nano /var/www/html/index.html
	    ;;
        "Own IP Check")
            clear && curl ifconfig.me
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY"
	    ;;
    esac
done
