#!/bin/bash

# Sanitize input to wob so that the $SWAYSOCK.wob does not disconnect

while read IN
do
  [[ ! $IN =~ ^[+-]?[0-9]+$ ]] && IN=0
  [[ $IN -gt 100 ]] && IN=100
  [[ $IN -lt 0 ]] && IN=0
  echo $IN
done < "${1:-/dev/stdin}"
