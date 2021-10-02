#!/bin/sh
# simple shell script to pipe different simple outputs to i3status

i3status | (\
read line && echo "$line" \
&& read line && echo "$line" \
&& read line && echo "$line" \
&& while :
do
  read line
  soma=$(~/.config/i3status/soma.sh)

  echo ",[\
${soma},\
${line#,[}"|| exit 1
done)

#  weather=$(~/.config/i3status/weather.sh)
