#!/bin/bash

# This script allowes i3blocks to display local ip addresses with colored output based
#	off of connection status.
#
#		RED = NO INTERNET CONNECTION
#		GREEN = INTERNET CONNECTION

# Check for internet connection
[ $(cat /sys/class/net/wlp*/operstate) == "up" ] && color="#91e78b" || color="#f26d6d"

printf "<span color='%s'>%s</span>" "$color" "$(hostname -i | awk '{ print $1 }')"
