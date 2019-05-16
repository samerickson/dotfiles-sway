#!/bin/bash

usage() {
	echo "Usage:"
	echo "	audio.sh mute	: toggle mute on machine"
	echo "	audio.sh add	: Add 5% to current audio levels"
	echo "	audio.sh sub	: Remove 5% from the current audio levels"
}

[ "$#" -ne "1" ] && echo "Incorrect usage..." && usage && exit 1

case "$1" in
	mute)
		([ "$(pulsemixer --get-mute)" == 0 ] && pulsemixer --mute) || pulsemixer --unmute 
		;;
	add)
		pulsemixer --change-volume +5
		;;
	sub)
		pulsemixer --change-volume -5
		;;
	*)	
		echo "Command $1 not found"
		usage
		exit 1
		;;
esac
# Reload the status bar
pkill -RTMIN+10 i3blocks
