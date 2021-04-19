#!/bin/bash

sudo apt-get update;
sudo apt-get upgrade -y;

# Change lang in "sudo raspi-config" -> "Localisation Options" -> "Change wireless country"
sudo iwlist wlan0 scan; # Get list of Wi-Fi
wpa_passphrase "<Wi-Fi ESSID>" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null;
wpa_cli -i wlan0 reconfigure;
ifconfig wlan0;
