#!/bin/bash

read -p 'wifi name? ' wifiname
read -p 'passphrase? ' wifipwd
iwctl --passphrase $wifipwd station wlan0 connect $wifiname

