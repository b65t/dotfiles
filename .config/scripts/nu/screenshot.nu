#!/usr/bin/env nu

# Define the screenshot file name and location
let DATE = (date now | format date "%Y-%m-%d_%H-%M-%S")
let FILE = $"/tmp/screenshot_($DATE).png"

# Take a screenshot using grim and save it to the defined file
grim $FILE

# Copy the screenshot to the clipboard using wl-copy
open $FILE | wl-copy

# Optionally, notify that the screenshot is copied to clipboard
notify-send "Screenshot Taken" "The screenshot has been copied to clipboard."

# Exit script
exit
