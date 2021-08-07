. ./config.sh

./1-mac-change.sh
./2-change-device-mode.sh

# for 2ghz only
##airodump-ng $myWifiDevice

echo "Discovering available wifi networds near you."

# for all frequencies 2ghz/5ghz
airodump-ng --band abg $myWifiDevice

echo "Discovered devices please see details above !!"