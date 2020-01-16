#!/bin/sh

# This script is used by libinput-gestures to change work spaces
#	using a three finger gesture on my touch pad. This is a feature
#	from macos that I find it hard to live without.

[ -z "$1" ] && \
	printf "Please supply a command:\n\tnext\n\tprev\n" && \
	exit 1

if [ "$1" == "next" ]; then
	notify-send -t 1500 "Moved to NEXT screen" && \
	swaymsg -t command workspace next_on_output && \
	exit
elif [ "$1" == "prev" ]; then
	notify-send -t 1500 "Moved to PREVOUS screen" && \
	swaymsg -t command workspace prev_on_output && \
	exit
else
	printf "%s was not valid input.\n" "$1" && \
	exit 1
fi

