#!/bin/sh
# shell script to append soma.fm currently playing information to i3status

song_name="$(echo '{ "command": ["get_property", "media-title"] }' | socat - /tmp/mpvsocket | grep -o ":.*\"," | sed 's/:"//;s/",//' | sed 's/\&/+/g')"
[ -z "$song_name" ] && song_name="▶"

markup="<span background='#5eff71'>"
endmkp="</span>"

echo "{\"name\":\"soma.fm\",\"markup\":\"pango\",\"full_text\":\"${markup} ${song_name} ${endmkp}\",\"color\":\"#000000\" }"
