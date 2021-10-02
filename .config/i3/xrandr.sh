#!/bin/sh
xrandr --dpi 163 \
 --output DP-1 --off \
 --output DP-2 --mode 3840x2160 --pos 3840x0 --rotate normal \
 --output DP-3 --off \
 --output HDMI-0 --mode 1920x1080 --pos -3840x0 --scale 2 --rotate normal \
 --output DP-0 --primary --mode 3840x2160 --pos 0x0
