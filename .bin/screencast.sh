#!/bin/bash

# This script starts a screencast
	


DISPLAY="$(~/.bin/select_focused.sh)"

[ ! -z $(pidof wf-recorder) ] && \
	notify-send -t 1500 "Error: screencast already running" && \
	exit 1 

notify-send -t 1500 "Starting screencast on $DISPLAY" && \
	wf-recorder -o $DISPLAY ~/Videos/screencast-$(date +%Y%m%d%h%m).mkv && \
	notify-send -t 1500 "Stoped screencast"
