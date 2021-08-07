. ./config.sh

# see available wifi details
./3-packet-sniffing.sh

# capture packets and save in file

echo "Enter BSSID/Mac address of device."

read targetMac

echo "Enter channel."

read targetChannel

echo "Please enter wifi name"

read targetName

# capturing packets and saving into file
airodump-ng --bssid $targetMac --channel $targetChannel --write ./$packedPath/$targetName $myWifiDevice

echo "Packets captured successfully, please find it in $packedPath with name $targetName"
