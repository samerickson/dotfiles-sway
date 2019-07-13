#!/bin/bash

# This script starts a screencast
DISPLAY="$(~/.local/bin/select_focused.sh)"

[ "$#" -ne 1 ] && printf "Expected an argument.\n"

rec-status() {
	[ "$(pidof wf-recorder)" ] && \
		printf "<span color=\"#f26d6d\">RECORDING ACTIVE</span>" || \
		printf "<span color=\"#91378b\">recording inactive</span>"
	exit 0
}

rec-start() {
	[ "$(pidof wf-recorder)" ] && \
		notify-send -t 1500 "Error: screencast already running" && exit 1
	
	notify-send -t 1500 "Starting screencast on $DISPLAY"
	wf-recorder -a -o "$DISPLAY" -f "$HOME/Videos/screencast-$(date +%Y-%m-%d_%h:%M).mp4"
}

rec-stop() {
	[ ! "$(pidof wf-recorder)" ] && \
		notify-send -t 1500 "Error: no active screencast to terminate" && exit 1
	
	kill -2 $(pidof wf-recorder)
	notify-send -t 1500 "Stoped screencast"
	exit 0

}

# Validate user input
if [ "$1" = "start" ]; then
	rec-start && exit 0 || exit 1
elif [ "$1" = "stop" ]; then
	rec-stop && exit 0 || exit 1
elif [ "$1" = "status" ]; then 
	rec-status && exit 0 || exit 1
else
	printf "ERROR: \"$1\" is not a valid argument.\n" && exit 1
fi

