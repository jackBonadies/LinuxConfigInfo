#!/bin/sh
kill $(ps | grep feh | awk '{ print $1 }') 2>/dev/null
curTrack1=`cmus-remote -Q | grep "file" | cut -d\  -f2-`
ffmpeg -i 2>/dev/null "$curTrack1" -y /tmp/cover2.jpg;
if [ $? -ne 0 ]
then
	echo "no cover"
	exit;
fi
feh -Z -. -B "black" /tmp/cover2.jpg &
