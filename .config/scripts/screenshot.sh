#!/bin/bash

# Define the screenshot file name and location
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILE="/tmp/screenshot_$DATE.png"

# Take a screenshot using grim and save it to the defined file
grim "$FILE"

# Copy the screenshot to the clipboard using wl-copy
cat "$FILE" | wl-copy

# Optionally, notify that the screenshot is copied to clipboard
notify-send "Screenshot Taken" "The screenshot has been copied to clipboard."

# Exit scr
