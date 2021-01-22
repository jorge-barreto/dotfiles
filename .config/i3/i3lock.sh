#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#851980'  # default
T='#ffffffff'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying
G='#23c406'  # green :)

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$G       \
--bshlcolor=$G        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%I:%M %p"  \
--datestr="%A, %m %Y" \
--keylayout 2	\
\
--ignore-empty-password
