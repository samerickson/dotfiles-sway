#!/bin/bash

# This script returns the focused display
swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name'
