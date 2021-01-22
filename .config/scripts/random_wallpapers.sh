curl -sSL 'https://source.unsplash.com/random/1920x1080?nature,forest,mountains' > /tmp/f00
curl -sSL 'https://source.unsplash.com/random/1920x1080?galaxy' > /tmp/f01
curl -sSL 'https://source.unsplash.com/random/768x1366?space,nature' > /tmp/f02

feh --bg-fill /tmp/f00 /tmp/f01 /tmp/f02 
