#!/bin/bash

export DISPLAY=:0
export XAUTHORITY="$HOME/.Xauthority"

while true; do
    # Wait for display changes
    inotifywait -e close_write /sys/class/drm/card*-* 2>/dev/null

    # Run autorandr to apply the appropriate profile
    autorandr --change
done

