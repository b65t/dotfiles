#!/usr/bin/env bash

WALLPAPER_DIR="/home/islam/Background/"
CHOICE=$(ls "$WALLPAPER_DIR" | grep -E '\.(jpg|png)$' | while read A; do
    echo -e "img:$WALLPAPER_DIR$A"
done | wofi --dmenu --prompt " Select wallpaper" --style ~/.config/wofi/wallpaper/style.css --conf ~/.config/wofi/wallpaper/config)

[ -z "$CHOICE" ] && { echo "No wallpaper selected"; exit 1; }

WALLPAPER=$(echo "$CHOICE" | sed 's/^img://')

sed -i "s|(defvar current-wallpaper .*)|(defvar current-wallpaper \"$WALLPAPER\")|" ~/.config/eww/yuck/desktop/wallpaper.yuck

#wal -n -i "$WALLPAPER"
