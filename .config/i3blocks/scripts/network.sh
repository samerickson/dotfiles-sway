#!/bin/bash

# This script allowes i3blocks to display local ip addresses with colored output based
#	off of connection status.
#
#		RED = NO INTERNET CONNECTION
#		GREEN = INTERNET CONNECTION

# Check for internet connection
if [ $(cat /sys/class/net/ens*/operstate) == "up" ] || \
	[ $(cat /sys/class/net/wlp*/operstate) == "up" ]; then
	color="#91e78b"
else
	color="#f26d6d"
fi 

printf "<span color='%s'>%s</span>" "$color" "$(hostname -i | awk '{ print $1 }')"
