#!/usr/bin/env nu

# Define the screenshot file name and location
let DATE = (date now | format date "%Y-%m-%d_%H-%M-%S")
let FILE = $"/tmp/screenshot_($DATE).png"

# Use slurp to select the region and grim to take a screenshot of the selected area
let region = (slurp -w 0)
grim -g $region $FILE

# Check if the screenshot was successfully taken
if (not ($FILE | path exists | is-empty)) {
    # Copy the screenshot to the clipboard using wl-copy
    open $FILE | wl-copy

    # Notify the user that the screenshot was copied to clipboard
    notify-send "Screenshot Taken" "The selected region has been copied to clipboard."
} else {
    # Notify the user that the screenshot failed
    notify-send "Screenshot Failed" "There was an error taking the screenshot."
}

# Exit script
exit
