#!/bin/bash

# This script allowes i3blocks to display local ip addresses with colored output based
#	off of connection status.
#
#		RED = NO INTERNET CONNECTION
#		GREEN = INTERNET CONNECTION

. ~/.config/colorsrc

# Check for internet connection
#if [ $(cat /sys/class/net/ens*/operstate) == "up" ] || \
#	[ $(cat /sys/class/net/wlp2s0/operstate) == "up" ]; then

[ $(cat /sys/class/net/wlp2s0/operstate) == "up" ] && \
	color="$lime" || \
	color="$red"

# TODO: Change "Network" to local ip address
printf "<span color='%s'>%s</span>\n" "$color" "$(ip route | head -1 | awk 'NR=1{print $3}')"
