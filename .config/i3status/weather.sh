#!/bin/sh
# shell script to append i3status with weather

markup="<span background='#ff5c5f'>"
temp=$(cat ~/.weather.cache)
endmarkup="</span>"
echo "{\"name\":\"weather\",\"markup\":\"pango\",\"full_text\":\"${markup} ${temp} ${endmarkup}\",\"color\":\"#000000\" }"
