. ./config.sh

#Check whether they are equal
if [ "$mode" != "Monitor" ]; then
    # down device
    ifconfig $myWifiDevice down

    # change mac
    ifconfig $myWifiDevice hw ether $fakeMac

    # up device
    ifconfig $myWifiDevice up

    # see the result
    ##ifconfig

    echo "Device mac address changed successfully !!"
fi

if [ "$mode" == "Monitor" ]; then
    echo "Mac already changed"
fi
