#!/bin/sh

. ~/.config/colorsrc

[ "$(pidof wf-recorder)" ] && \
	printf "<span color='%s'>RECORDING ACTIVE</span>\n" "$red"
