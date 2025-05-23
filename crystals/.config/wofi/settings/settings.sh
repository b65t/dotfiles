THEME=$(echo -e "colorscheme\nmain-color\nmain-color2\ndisable widgets\nenable widgets\nwallpaper\neww-reload" | wofi --dmenu --prompt "Settings" --conf ~/.config/wofi/settings/config)

case $THEME in
    "colorscheme") ~/.config/wofi/settings/colorscheme-switcer.sh ;;
    "main-color") ~/.config/wofi/settings/main-color.sh ;;
    "main-color2") ~/.config/wofi/settings/main-color2.sh ;;
    "disable widgets") ~/.config/wofi/settings/eww-disable.sh ;;
    "enable widgets") ~/.config/wofi/settings/eww-enable.sh ;;
    "main-color") ~/.config/wofi/settings/main-color.sh ;;
    "wallpaper") ~/.config/eww/scripts/wallpaper.sh ;;
    "eww-reload") ~/.config/eww/bin/crystals.sh restart ;
		  ;;
    *) echo "No option selected" ;;
esac
