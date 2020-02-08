#!/bin/bash

# This script is used to display disk usage information in a status bar
usage="$(df -h "$1" | awk ' /[0-9]/ {print $3 "/" $2}')"

printf "<span color='%s'>%s: </span><span color='%s'>%s</span>\n" "$YELLOW" "$1" "$MAGENTA" "$usage"
