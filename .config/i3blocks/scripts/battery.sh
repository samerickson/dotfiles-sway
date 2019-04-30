#!/bin/bash

# This script allowes i3blocks to display battery information.
#	With colored output:
#			
#		BATTERY LEVEL > 80% -- OUTPUT COLOR GREEN
#		BATTERY LEVEL < 20% -- OUTPUT COLOR YELLOW
#		BATTERY LEVEL < 10% -- OUTPUT COLOR RED

max_charge=$(cat /sys/class/power_supply/BAT0/charge_full)
current_charge=$(cat /sys/class/power_supply/BAT0/charge_now)
current="$(echo "scale=2;$current_charge/$max_charge" | bc | sed 's/\.//g')"

if [[ "$current" -lt 20 ]]; then
	color="#ffd072"
elif [[ "$current" -lt 10 ]]; then
	color="#f26d6d"
elif [[ "$current" -gt 80 ]]; then
	color="#91e78b"
else
	color="#ffffff"
fi 

printf "<span color='%s'>%s</span>" "$color" "$current%"

