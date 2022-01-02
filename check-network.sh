#!/bin/bash

#if ! [ "$(ping -c 1 google.com)" ]; then
#    reboot
#fi

# Check wifi connection...
ping 8.8.8.8 -I wlan0 -c4
# '$?' is the exit code of previous ping command
if [ $? != 0 ] #  => failure
then
  logger "No network connection, restarting wlan0"
  # Take WiFi down
  ip link set dev wlan0 down
  sleep 5
  # Take WiFi up
  ip link set dev wlan0 up
fi
