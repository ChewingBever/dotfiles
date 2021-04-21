#!/usr/bin/env sh

# Setup displays layout
autorandr --change

# Display wallpapers
nitrogen --restore

cur_layout="$(autorandr --current)"

# Properly set DPI & keyboard layout
if [ "$cur_layout" = loftie ]; then
    xrandr --dpi 120
    setxkbmap -layout us -variant altgr-intl

# Display sys tray on correct display
elif [ "$cur_layout" = default ]; then
    xrandr --output eDP-1-1 --primary
fi
