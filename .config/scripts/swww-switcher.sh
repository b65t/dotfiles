#!/usr/bin/env bash

supported_formats=("jpeg" "png" "gif" "pnm" "tga" "tiff" "webp" "bmp" "farbfeld" "jpg")

WALLPAPER_DIR=/home/islam/Background/
CHOICE=$(ls "$WALLPAPER_DIR" -1 | grep \\.jpg | while read A ; do  echo -en "$A\x00icon\x1f~/Background/$A\n"; done | rofi -dmenu -p wall -theme ~/.config/rofi/swww/theme.rasi "Wallpaper")
WALLPAPER="$WALLPAPER_DIR/$CHOICE"

if [[ -z $CHOICE ]]; then
  echo "no wallpaper selected"
  exit
fi


~/.config/scripts/swww.sh "$WALLPAPER"
wal -n -i "$WALLPAPER"

pkill swaync
swaync

