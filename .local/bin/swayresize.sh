#!/bin/sh

# This script provides a cleaner way of resizing windows in swaywm
#	This script was inspired by Luke Smith's i3 implimentation, who
#	also borrowed the idea from 'goferito'.
#	https://github.com/LukeSmithxyz/voidrice/blob/archi3/.local/bin/i3cmds/i3resize

[ "$#" -ne 1 ] && \
	printf "Incorrect number of arguments, expected one, got %s\n" "$#" && \
	exit 1

distance="5px"

move() {
	swaymsg resize "$1" "$2" "$distance"|| swaymsg resize "$3" "$4" "$distance"
}

case "$1" in
	up)
		move grow up shrink down ;;
	down) 
		move shrink up grow down ;;
	left)
		move grow right shrink left ;;
	right)
		move shrink right grow left ;;
esac
