#!/bin/sh
# simple shell script to pipe different simple outputs to i3status

i3status | (\
read line && echo "$line" \
&& read line && echo "$line" \
&& read line && echo "$line" \
&& while :
do
  read line
  weather=$(~/.config/i3status/weather.sh)
  soma=$(~/.config/i3status/soma.sh)

  echo ",[\
${soma},\
${weather},\
${line#,[}"|| exit 1
done)

