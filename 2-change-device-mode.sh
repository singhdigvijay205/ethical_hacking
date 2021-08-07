. ./config.sh

if [ "$mode" != "Monitor" ]; then
    # change mac address
    ./1-mac-change.sh

    # down device
    ifconfig $myWifiDevice down

    # kill process
    #airmon-ng check kill #optional

    # change mode
    iwconfig $myWifiDevice mode monitor

    # up device
    ifconfig $myWifiDevice up

    # see result
    ##iwconfig

    echo "Device switched to monitor mode successfully !!"
fi

if [ "$mode" == "Monitor" ]; then
    echo "Device already in monitor mode."
fi
