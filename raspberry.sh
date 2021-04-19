#!/bin/bash

passwd;

# Enable ssh by key from outer device
# ssh-copy-id <username (usually "pi")>@<host> # From outer device

sudo apt-get update;
sudo apt-get upgrade -y;

# Change lang in "sudo raspi-config" -> "Localisation Options" -> "Change wireless country"
# sudo iwlist wlan0 scan; # Get list of Wi-Fi
# wpa_passphrase "<Wi-Fi ESSID>" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null;
# wpa_cli -i wlan0 reconfigure;
# ifconfig wlan0;

# Install golang
# export GOLANG="$(curl https://golang.org/dl/|grep armv6l|grep -v beta|head -1|awk -F\> {'print $3'}|awk -F\< {'print $1'})"
# wget https://golang.org/dl/$GOLANG
# sudo tar -C /usr/local -xzf $GOLANG
# rm $GOLANG
# unset GOLANG

#nano ~/.profile
# Scroll all the way down to the end of the file and add the following:
# PATH=$PATH:/usr/local/go/bin
# GOPATH=$HOME/golang
# source ~/.profile

