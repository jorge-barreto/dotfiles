#!/bin/sh
# this script grabs a short weather snippet in tallahassee, like this:
# 🌓 ☁️ H: 78% 64°F

period="$(echo $(( $RANDOM % 60 + 1 )))"

/usr/bin/curl -s wttr.in/~30.4671208,-84.3268957?format="%m+%c+H:+%h+%t"\&period=$period | sed -e 's/+//' > /home/jbarreto/.weather.cache
