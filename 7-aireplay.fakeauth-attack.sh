. ./config.sh

## It will only work for WEP encrypted wifi networks
## You may get the error if wifi using another encryption algo

times=0

echo "Enter target router mac address"
read targetRouterMac

aireplay-ng --fakeauth $times -a $targetRouterMac -h $fakeMac $myWifiDevice