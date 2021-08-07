. ./config.sh

./3-packet-sniffing.sh

echo "Enter target router mac address."
read targetRouterMac
echo "Enter target router channel."
read targetRouterChannel

airodump-ng --bssid $targetRouterMac --channel $targetRouterChannel $myWifiDevice