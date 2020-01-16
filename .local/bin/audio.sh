#!/bin/bash

# This script handles changes in audio settings via keyboard shortcuts in sway
#	applying those settings to the system, and updating the status bar.

usage() {
	printf "Usage:\n"
	printf "\taudio.sh mute\t: toggle mute on machine\n"
	printf "\taudio.sh add\t: Add 5% to current audio levels\n"
	printf "\taudio.sh sub\t: Remove 5% from the current audio levels\n"
	printf "\taudio.sh get\t: Get the current audio level as an integer.\n"
}

muted() {
	[ "$(pulsemixer --get-mute)" = 0 ] && exit 0 || exit 1
}

[ "$#" -ne "1" ] && usage && exit 1

case "$1" in
	mute)
		([ "$(pulsemixer --get-mute)" == 0 ] && pulsemixer --mute) || pulsemixer --unmute ;;
	add)
		pulsemixer --change-volume +5 ;;
	sub)
		pulsemixer --change-volume -5 ;;
	get)
		pulsemixer --get-volume | cut -c 1-2 ;;
	*)	
		printf "Command %s not found" "$1"
		usage
		exit 1 ;;
esac

[ "$(pulsemixer --get-mute)" == 1 ] && printf "0\n" || \
	printf "%s\n" "$(pulsemixer --get-volume | cut -c 1-2)"

# Reload the status bar
pkill -RTMIN+10 i3blocks
