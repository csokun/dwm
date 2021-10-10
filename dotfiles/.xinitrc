#!/bin/sh

# slstatus Bar
/usr/local/bin/slstatus &

# Restore wallpaper
nitrogen --restore &

#loop 
while true; do
	dwm >/dev/null 2>&1 
done

#Window manager
exec dwm