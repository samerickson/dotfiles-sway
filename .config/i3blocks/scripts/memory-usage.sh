#!/bin/sh

# This script produces memory usage information on unix systems.
#	Intended to be used in a status bar. This script is POSIX compliant

# Get the total amount of available memory and the used memory
used="$(free -m | awk ' FNR ==2 { print $3}')"
avail="$(free -m | awk 'FNR == 2 { print $2 }')"


scale="MB"
avail="$(printf "scale=1; %d/1024\n" "$avail" | bc)"
[ "$used" -gt 1024 ] && used="$(printf "scale=1; %d/1024\n" "$used" | bc)" && scale="G" 

# Calculate the usage value as a precentage of the total available
#	memory in the form of an integer 0-99. This breaks if usage = 100%,
#	Though this causes lot of other issues in linux, and should not happen.
usage="$(printf "scale=1; %s/%s*1000\n" "$used" "$avail" | bc | cut -c 1-2)"

# Set the output color dependant on the precentage of total memory that is
#	being used
if [ "$usage" -lt 70 ]; then
	usagecol="$LIME"
elif [ "$usage" -lt 80 ]; then
	usagecol="$YELLOW"
else 
	usagecol="$RED"
fi

printf "<span color='%s'>MEM:</span>" "$YELLOW"
printf "<span color='%s'>%s%s</span>" "$usagecol" "$used" "$scale"
printf "<span color='%s'>/</span>" "$MAGENTA"
printf "<span color='%s'>%sG</span>\n" "$LIME" "$avail"
