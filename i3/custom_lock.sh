#!/bin/bash
tmpbg='/tmp/screen.png'
icon="$HOME/Pictures/lock.png"

# Take a screenshot
maim "$tmpbg"

# Blur the screenshot
convert "$tmpbg" -blur 0x8 "$tmpbg"

# Add an icon to the screenshot (optional)
convert "$tmpbg" "$icon" -gravity center -composite "$tmpbg"

# Lock the screen with the blurred image
i3lock -i "$tmpbg"

