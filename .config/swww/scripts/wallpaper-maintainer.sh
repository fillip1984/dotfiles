#!/bin/bash

# Init the swww daemon if it isn't running already

pidof swww-daemon >/dev/null
if [[ $? -ne 0 ]] ; then
    swww-daemon &
    sleep 0.5
fi

# Set the path to the wallpapers directory
wallpapersDir="$HOME/Pictures/wallpapers"

# Get a list of all image files in the wallpapers directory
wallpapers=("$wallpapersDir"/*)

echo "just prior to while" 1>&3
# Start an infinite loop
while true; do
    # Check if the wallpapers array is empty
    if [ ${#wallpapers[@]} -eq 0 ]; then
        # If the array is empty, refill it with the image files
        wallpapers=("$wallpapersDir"/*)
    fi

    # Select a random wallpaper from the array
    wallpaperIndex=$(( RANDOM % ${#wallpapers[@]} ))
    selectedWallpaper="${wallpapers[$wallpaperIndex]}"

    # Update the wallpaper using the swww img command
    swww img "$selectedWallpaper" -t random

    # Remove the selected wallpaper from the array
    unset "wallpapers[$wallpaperIndex]"

    # Delay for x minutes before selecting the next wallpaper
    sleep 30m
done