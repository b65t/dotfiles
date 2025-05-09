#!/bin/bash

COMMENTED_INCLUDES=$(grep '^;; *(include' ~/.config/eww/eww.yuck | awk -F'"' '{print $2}')

SELECTED=$(echo "$COMMENTED_INCLUDES" | wofi --dmenu --prompt "Select include to uncomment" --conf ~/.config/wofi/settings/config)

if [ -n "$SELECTED" ]; then
    sed -i "s|;; *(include \"$SELECTED\")|(include \"$SELECTED\")|" ~/.config/eww/eww.yuck
    echo "Uncommented: $SELECTED"
else
    echo "No selection made"
fi
