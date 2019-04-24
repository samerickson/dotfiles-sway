#!/bin/bash

# Gets your public ip address checks which country you are in and
# displays that information in the statusbar

addr="$(curl ifconfig.me 2>/dev/null)"
[ -z "$addr" ] && echo "No connection" && exit

# Should check is geoiplookup is installed
geoiplookup $addr | sed 's/.*, //'
