song="$(echo '{ "command": ["get_property", "media-title"] }' | socat - /tmp/mpvsocket | grep -o ":.*\"," | sed 's/:"//;s/",//')"

echo $song >> ~/.config/soma.fm/favs
notify-send "$song added to faves"
