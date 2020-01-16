#!/bin/sh

# This script is used by my dotfiles, specifically my swaywm config.
#	It checks it checks if the command passed as command line
#	parameters succeeded, if it did not then it will notify the user
#	than an error has occured.
#
# USAGE:
#	check.sh <required-package> <pacman|yay> <Title> \
#				<information> <cmd + parameters>
title="$3"
msg="$4. Please install '$5' via $2."

# Shift over first four elements in the $@ list
shift; shift; shift

"$@" 2>> ~/.local/log/sway.log || notify-send "$title" "$msg $msg2" 
