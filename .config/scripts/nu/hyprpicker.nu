#!/usr/bin/env nu

let TMPPCK = $"(hyprpicker -a -n)"
let TMPPST = $"(wl-paste)"
let CMD = $"($TMPPST)"
let TMP = $"/tmp/xcolor_($CMD).png"

convert -size 120x120 xc:($CMD) ($TMP)

printf %s ($CMD) | wl-paste

notify-send -a "Color Picker" -i ($TMP) "Color-picked!" ($CMD)
