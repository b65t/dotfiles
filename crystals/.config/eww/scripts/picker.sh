TMPPCK=$(hyprpicker -a -n)
TMPPST=$(wl-paste)
CMD=$(echo "$TMPPST")
TMP=/tmp/xcolor_$CMD.png

convert -size 120x120 xc:"$CMD" "$TMP"
printf %s "$CMD" | wl-paste 
notify-send -a "Color Picker" -i "$TMP" Color-picked! "$CMD"
