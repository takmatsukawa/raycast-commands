#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect AirPods
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

AIR_PODS_ADDRESS=30-d8-75-2b-7a-fa # Your AirPods MAC address
AIR_PODS_NAME="Takuro’s AirPods Pro #2" # Your AirPods name

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

