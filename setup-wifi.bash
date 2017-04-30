#!/bin/bash
if [ -z $1 ]; then echo "Error, '\$1 which is ESSID' missing .."; exit 99; fi; 
if [ -z $2 ]; then echo "Error, '\$2 which is KEY' missing .."; exit 99; fi; 
wpa_passphrase $1 $2 >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo pkill wpa_supplicant
sudo ifconfig wlan0 down
sudo ifconfig wlan0 up
sudo iwconfig wlan0 essid $1
sudo wpa_supplicant -B -Dnl80211 -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf
sudo dhclient wlan0
