#!/bin/sh

# This span prints the cpu tempature

. ~/.config/colorsrc

temp="$(sensors | awk '/Core 0/ { print $3 }')"

#printf "[%s] %s\n" "$(date)" "$temp" >> ~/.local/logs/cpu-temp.log
printf "<span color='%s'>: </span><span color='%s'>%s</span>\n" "$yellow" "$lime" "$temp"
