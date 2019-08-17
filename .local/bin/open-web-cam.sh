#!/bin/sh

# This script opens your web cam on mpv
mpv --untimed --demuxer-lavf-format=video4linux2 \
	--demuxer-lavf-o-set input_format=mjpeg /dev/video0 || \
	notify-send -i ~/.local/share/icons/default/32x32/devices/camera-web-white.png \
	"ERROR: No webcam found"
