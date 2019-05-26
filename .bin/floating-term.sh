#!/bin/bash

# This script spawns a floating terminal in swaywm, will execute
#	the first command line argument passed on terminal spawn
if [ "$(swaymsg -t get_tree | grep terminal_floating)" ]; then
	swaymsg focus floating, kill && exit
elif [ -n "$1" ]; then
	swaymsg exec "termite --name=terminal_floating -e $1"
else 
	swaymsg exec "termite --name=terminal_floating"
fi
