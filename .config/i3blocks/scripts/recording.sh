#!/bin/sh

[ "$(pidof wf-recorder)" ] && \
	printf "<span color='%s'>RECORDING ACTIVE</span>\n" "$RED"
