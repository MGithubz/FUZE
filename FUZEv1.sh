#!/bin/bash
#
# FUZE! [version.1]
#
# An efficient script made by ME to speed shit up.
# The " root@D0loresH4ze:~/FUZE.sh# " part is editable, it's just cosmetics.
# For example you can put "Choose an Option: " Instead of that and the script will still work.
# Just make sure to only edit the text in between the apostrophes ( ' ' ) AND do NOT edit the " PS3= " part or the script may not work.
# =====================================================================================================================================
# To ADD your OWN options to this script, copy this: 
#
# ===========================================
#
#         "YourOption")
#             clear && YourCommand
#             ;;
#
# ===========================================
#
# And put it underneath or above another option's double semicolons Like this:
#
# ===========================================
#
#         "YourOption")
#             clear && YourCommand
#             ;;
#         "AnotherOption")
#             clear && AnotherCommand
#             ;;
# 
# ===========================================
#
# After that, add "YourOption" to the " options=( " part under " PS3=' " with a single space from right and left between the other options.
# Make sure that your new option is in the right order with the others, otherwise the script will not work.
#==========================================================================================================================================

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
