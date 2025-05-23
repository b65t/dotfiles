#!/bin/bash

current_state=$(eww get open_volume_osd)

if [[ -z $(eww list-windows | grep '*osd-volume') ]]; then
   eww open osd-volume
fi

case "$1" in
  up)
    if [ "$current_state" = "false" ]; then
      eww update open_volume_osd=true
    fi
    pamixer --increase 2
    pkill -f "~/.config/bin/eww/osd.sh"
    (sleep 3; eww update open_volume_osd=false) &
    pkill -f "~/.config/eww/bin/osd.sh"
    ;;
  down)
    if [ "$current_state" = "false" ]; then
      eww update open_volume_osd=true
    fi
    pamixer --decrease 2
    pkill -f "~/.config/eww/bin/osd.sh"
    (sleep 3; eww update open_volume_osd=false) &
    pkill -f "~/.config/eww/bin/osd.sh"
    ;;
  *)
    echo "Usage : $0 {up/down}"
  ;;
esac

exit 0
