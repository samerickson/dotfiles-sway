#!/bin/bash

# This script allowes i3blocks to indicate the current set audio levels, and mute status.

source $HOME/.config/i3blocks/scripts/colors.sh

# Check if muted
[ $(pulsemixer --get-mute) -eq "1" ] && volume=0 || \	
	volume=$(pulsemixer --get-volume | awk '{ print $1 }')

# Set the appropriate icon
[ "$volume" -eq 0 ] && color="$red" && volume="MUTED" || \
	[ "$volume" -lt 101 ] && color="$lime" || \
	color="$red"


printf "<span color='%s'>Vol: </span><span color='%s'>%s</span>" "$yellow" "$color" "$volume%"
