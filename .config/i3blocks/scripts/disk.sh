#!/bin/sh

# This script is used to display disk usage information in a status bar

usage="$(df -h "$1" | awk ' /[0-9]/ {print $3 "/" $2}')"
value="$(echo "scale=2;$usage*100" | bc | cut -c1-2 )"

if [ "$value" -gt "95" ]; then
	color="$RED"
elif [ "$value" -gt "90" ]; then
	color="$YELLOW"
else
	color="$LIME"
fi
printf "<span color='%s'>%s: </span><span color='%s'>%s</span>\n" "$YELLOW" "$1" "$color" "$usage"
