#!/bin/bash

# Get all uncommented includes
INCLUDES=$(grep '^(include' ~/.config/eww/eww.yuck | awk -F'"' '{print $2}')

# Show selection using wofi
SELECTED=$(echo "$INCLUDES" | wofi --dmenu --prompt "Select include to comment" --conf ~/.config/wofi/settings/config)

if [ -n "$SELECTED" ]; then
    # Add double semicolon to comment the line
    sed -i "s|(include \"$SELECTED\")|;;(include \"$SELECTED\")|" ~/.config/eww/eww.yuck
    echo "Commented: $SELECTED"
else
    echo "No selection made"
fi
