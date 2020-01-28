#!/bin/bash

# This script allowes i3blocks to display battery information.
#	With colored output:
#			
#		BATTERY LEVEL > 80% -- OUTPUT COLOR GREEN
#		BATTERY LEVEL < 20% -- OUTPUT COLOR YELLOW
#		BATTERY LEVEL < 10% -- OUTPUT COLOR RED
#		BATTERY CHARGING	-- OUTPUT COLOR MAGENTA

max_charge=$(cat /sys/class/power_supply/BAT0/charge_full)
current_charge=$(cat /sys/class/power_supply/BAT0/charge_now)
current="$(echo "scale=2;$current_charge/$max_charge" | bc | sed 's/\.//g')"

if [[ "$current" -lt 20 ]]; then
	color="$YELLOW"
	notify-send -i ~/.local/share/icons/default/devices/battery.png \
		"Warning: Battery 20%" "You should look into finding power soon."
elif [[ "$current" -lt 10 ]]; then
	color="$RED"
	notify-send -i ~/.local/share/icons/default/devices/battery.png \
		"Warning: Battery level Critical" "You need to connect to power soon..."
elif [[ "$current" -gt 80 ]]; then
	color="$LIME"
else
	color="$WHITE"
fi 

if [ "$(cat /sys/class/power_supply/BAT0/status)" == "Charging" ]; then
	color="$MAGENTA"
fi

# Log battery percantage to log in .local/logs
#printf "[%s] %s\n" "$(date)" "$current" >> ~/.local/logs/battery.log

printf "<span color='%s'>BAT:</span><span color='%s'>%s</span>\n" "$YELLOW" "$color" "$current%"

