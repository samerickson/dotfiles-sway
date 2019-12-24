#!/bin/bash

# This script allowes i3blocks to display battery information.
#	With colored output:
#			
#		BATTERY LEVEL > 80% -- OUTPUT COLOR GREEN
#		BATTERY LEVEL < 20% -- OUTPUT COLOR YELLOW
#		BATTERY LEVEL < 10% -- OUTPUT COLOR RED
#		BATTERY CHARGING	-- OUTPUT COLOR MAGENTA

. ~/.config/colorsrc

max_charge=$(cat /sys/class/power_supply/BAT0/charge_full)
current_charge=$(cat /sys/class/power_supply/BAT0/charge_now)
current="$(echo "scale=2;$current_charge/$max_charge" | bc | sed 's/\.//g')"

if [[ "$current" -lt 20 ]]; then
	color="$yellow"
elif [[ "$current" -lt 10 ]]; then
	color="$red"
elif [[ "$current" -gt 80 ]]; then
	color="$lime"
else
	color="$white"
fi 

if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Charging" ]; then
	color="$magenta"
fi

# Log battery percantage to log in .local/logs
#printf "[%s] %s\n" "$(date)" "$current" >> ~/.local/logs/battery.log

printf "<span color='%s'>BAT:</span><span color='%s'>%s</span>\n" "$yellow" "$color" "$current%"

