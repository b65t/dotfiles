#!/bin/bash

case "$1" in
  start)
    echo "Starting EWW widgets..."
    ~/.config/eww/scripts/start.sh
    echo "All widgets started successfully!"
  ;;
  stop)
    echo "Stopping all EWW widgets..."
    pkill eww
    pkill -f ~/.config/eww/scripts/notifications.py
    echo "All widgets stopped successfully!"
  ;;
  restart)
    echo "Restarting Crystals..."
    $0 stop
    sleep 1
    $0 start
  ;;
  status)
    if pgrep -x "eww" > /dev/null; then
      echo "EWW status: Running"
      eww list-windows
    else
      echo "EWW status: Stopped"
    fi
  ;;
  osd)
    case "$2" in
      volume-up)
        ~/.config/eww/bin/osd.sh up
      ;;
      volume-down)
        ~/.config/eww/bin/osd.sh down
      ;;
     *)
       echo "volume-{up|down}"
     ;;
    esac
  ;;
  colorscheme)
    case "$2" in
      rose-pine)
        ~/.config/eww/bin/colorscheme.sh rose-pine
      ;;
      rose-pine-dawn)
        ~/.config/eww/bin/colorscheme.sh rose-pine-dawn
      ;;
     *)
       echo "volume-{up|down}"
     ;;
    esac
  ;;

  help|*)
  echo "welcome to crystals!"
  echo "Usage: $0 {start|stop|restart|status}"
  echo "Available commands:"
  echo "  start    - Launch Crystals"
  echo "  stop     - Close Crystals"
  echo "  restart  - Restart Crystals"
  echo "  status   - Show EWW open windows"
  exit 1
  ;;
esac

exit 0
