#!/bin/bash

# This script returnes the focused display
swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name'
