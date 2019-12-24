#!/bin/sh

# This script supplies my statusbar with the date and time

. ~/.config/colorsrc

printf "<span color='%s'>%s</span><span color='%s'> %s</span>\n" \
	"$yellow" "$(date +%a,\ %b\ %d)" "$lime" "$(date +%T)"

