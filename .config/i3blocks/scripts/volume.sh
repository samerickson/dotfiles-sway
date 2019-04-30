#!/bin/bash

# Check if muted
[ $(pulsemixer --get-mute) -eq "1" ] && printf "🔇" && exit

volume=$(pulsemixer --get-volume | awk '{ print $1 }')

# Set the appropriate icon
[ "$volume" -eq 0 ] && icon="🔈" || \
	[ "$volume" -lt 50 ] && icon="🔉" || icon="🔊" 

printf "%s %s" "$icon" "$volume%"
