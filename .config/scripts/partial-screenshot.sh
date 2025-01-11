#!/bin/bash

# Define the screenshot file name and location
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILE="/tmp/screenshot_$DATE.png"

# Use slurp to select the region and grim to take a screenshot of the selected area
grim -g "$(slurp -w 0 )" "$FILE"

# Check if the screenshot was successfully taken
if [ -f "$FILE" ]; then
    # Copy the screenshot to the clipboard using wl-copy
    cat "$FILE" | wl-copy

    # Notify the user that the screenshot was copied to clipboard
    notify-send "Screenshot Taken" "The selected region has been copied to clipboard."
else
    # Notify the user that the screenshot failed
    notify-send "Screenshot Failed" "There was an error taking the screenshot."
fi

# Exit script
exit 0
