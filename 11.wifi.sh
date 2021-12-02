#!/bin/bash

read -p 'wifi name? ' wifiname
read -ps 'passphrase? ' wifipwd
iwctl --passphrase $wifipwd station wlan0 connect $wifiname

