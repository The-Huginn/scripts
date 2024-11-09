#!/usr/bin/env bash

# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Ignore is fails
pkill xidlehook || true

# Run xidlehook
xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 300 \
    "~/scripts/i3/custom_lock.sh" "" \
  --timer 600 \
    "systemctl suspend" "" &
