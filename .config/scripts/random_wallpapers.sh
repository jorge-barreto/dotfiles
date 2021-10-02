curl -sSL 'https://source.unsplash.com/random/3840x2160?nature,forest,mountains' > /tmp/f00
curl -sSL 'https://source.unsplash.com/random/3840x2160?galaxy' > /tmp/f01
curl -sSL 'https://source.unsplash.com/random/3840x2160?space,nature' > /tmp/f02

feh --bg-fill /tmp/f00 /tmp/f01 /tmp/f02 
