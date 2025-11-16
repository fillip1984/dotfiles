#!/bin/bash

# Inspirations for this script:
# https://github.com/sayanta01/dotfiles/blob/main/.local/bin/wallch

# Init the awww daemon if it isn't running already
pidof awww-daemon >/dev/null
if [[ $? -ne 0 ]] ; then
    awww-daemon &
    sleep 0.5
fi

# Set the path to the wallpapers directory
wallpapersDir="/usr/share/wallpapers/Dr_Madthrusts Widescreen Wallpaper collection"

# Start an infinite loop
while true; do
    # Select a random wallpaper
    selectedWallpaper="$(find "$wallpapersDir" -name '*.jpg' -o -name '*.jpeg' -o -name '*.png' -o -name '*.webp' | shuf -n1)"
    
    # Update the wallpaper using the awww img command
    awww img "$selectedWallpaper" -t random

    # Delay for x minutes before selecting the next wallpaper
    sleep 30m
done
