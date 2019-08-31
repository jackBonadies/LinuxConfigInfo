#!/bin/bash
ICON=$HOME/.config/i3/icn.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
#sleep 2
#scrot "testtest.png"
