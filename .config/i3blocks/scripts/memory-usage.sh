#!/bin/sh

# This script produces memory usage information on unix systems.
#	Intended to be used in a status bar.

. ~/.config/colorsrc

used="$(free -m | awk ' FNR ==2 { print $3}')"
avail="$(free -m | awk 'FNR == 2 { print $2 }')"
usage="$(printf "scale=1; %d/%d\n" "$used" "$avail" | bc | cut -c 2-3)"
scale="MB"
avail="$(printf "scale=1; %d/1024\n" "$avail" | bc)"
[[ "$used" -gt 1024 ]] && used="$(printf "scale=1; %d/1024\n" "$used" | bc)" && scale="G" 


if [[ "$usage" -lt 70 ]]; then
	usagecol="$lime"
elif [[ "$usage" -lt 80 ]]; then
	usagecol="$yellow"
else 
	usagecol="$red"
fi

printf "<span color='%s'>MEM:</span>" "$yellow"
printf "<span color='%s'>%s%s</span>" "$usagecol" "$used" "$scale"
printf "<span color='%s'>/</span>" "$magenta"
printf "<span color='%s'>%sG</span>\n" "$lime" "$avail"
