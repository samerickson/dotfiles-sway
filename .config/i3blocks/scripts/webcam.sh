#!/bin/bash

[ $(fuser /dev/video0) ] && \
	printf "<span color='%s'>Webcam Active</span>\n" "$RED"
