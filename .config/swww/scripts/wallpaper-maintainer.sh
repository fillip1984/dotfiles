#!/bin/bash

# Inspirations for this script:
# https://github.com/sayanta01/dotfiles/blob/main/.local/bin/wallch

# Init the swww daemon if it isn't running already
pidof swww-daemon >/dev/null
if [[ $? -ne 0 ]] ; then
    swww-daemon &
    sleep 0.5
fi

# Set the path to the wallpapers directory
wallpapersDir="$HOME/Pictures/wallpapers"

# Start an infinite loop
while true; do
    # Select a random wallpaper
    selectedWallpaper="$(find "$wallpapersDir" -name '*.jpg' -o -name '*.jpeg' -o -name '*.png' -o -name '*.webp' | shuf -n1)"
    
    # Update the wallpaper using the swww img command
    swww img "$selectedWallpaper" -t random

    # Delay for x minutes before selecting the next wallpaper
    sleep 30m
done