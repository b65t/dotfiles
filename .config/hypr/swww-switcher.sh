WALLPAPER_DIR=/home/islam/Downloads/background/osage/
CHOICE=$(ls "$WALLPAPER_DIR" -1 | wofi --prompt "Wallpaper" --show dmenu)
WALLPAPER="$WALLPAPER_DIR/$CHOICE"

if [[ -z $CHOICE ]]; then
  echo "no wallpaper selected"
  exit
fi

~/.config/hypr/swww.sh "$WALLPAPER"
