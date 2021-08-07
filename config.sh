#!/bin/bash

myWifiDevice="wlan0"

fakeMac=00:11:22:33:44:55

packedPath=/captured

defaultPackets=10000000

mode=$(iwconfig | sed -n '/Mode:/s/.*Mode://; s/ .*//p')