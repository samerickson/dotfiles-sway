#!/bin/sh

# This script allowes i3blocks to indicate the current set audio levels, and mute status.

. ~/.config/colorsrc

# Check if muted
[ "$(pulsemixer --get-mute)" = 1 ] && volume=0 || volume=$(pulsemixer --get-volume | awk '{ print $1 }')


# Set the appropriate icon
[ "$volume" = 0 ] && color="$red" && volume="MUTED" || \
	[ "$volume" -lt 101 ] && color="$lime" || \
	color="$red"

[ "$volume" = "MUTED" ] || volume="$volume%"

printf "<span color='%s'>Vol: </span><span color='%s'>%s</span>\n" "$yellow" "$color" "$volume"
