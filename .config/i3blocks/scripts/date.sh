#!/bin/sh

# This script supplies my statusbar with the date and time
printf "<span color='%s'>%s</span><span color='%s'> %s</span>\n" \
	"$YELLOW" "$(date +%a,\ %b\ %d)" "$LIME" "$(date +%T)"

