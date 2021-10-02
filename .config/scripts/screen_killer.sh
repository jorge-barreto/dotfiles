#!/bin/bash
# simple script to disable screensavers
LENGTH=${1-1};
DELAY=${2-$((60*5))};

while true
do
	for ANGLE in 0 90 180 270
	do
		xdotool mousemove_relative --polar $ANGLE $LENGTH
		sleep $DELAY
	done
done

