#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect AirPods
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

AIR_PODS_ADDRESS=28-f0-33-88-27-d1 # Your AirPods MAC address
AIR_PODS_NAME="Tak’s AirPods Pro" # Your AirPods name

bluetoothconnector -c "$AIR_PODS_ADDRESS"
for ((i=0 ; i<10 ; i++))
do
    if [ "Connected" == $(bluetoothconnector -s "$AIR_PODS_ADDRESS") ]; then
        sleep 1
        SwitchAudioSource -s "$AIR_PODS_NAME"
        sleep 1
        say Connected
        break
    fi
    sleep 1
done

