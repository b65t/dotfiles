THEME=$(echo -e "red\ngreen\nyellow\nblue\npurple\ncyan\nwhite\ngrey" | wofi --dmenu --prompt "Select Color" --conf ~/.config/wofi/settings/config)

case $THEME in
    "red") sed -i 's|\$main-color:.*|\$main-color: color.$base01;|' ~/.config/eww/themes/theme.scss ;;
    "green") sed -i 's|\$main-color:.*|\$main-color: color.$base02;|' ~/.config/eww/themes/theme.scss ;;
    "yellow") sed -i 's|\$main-color:.*|\$main-color: color.$base03;|' ~/.config/eww/themes/theme.scss ;;
    "blue") sed -i 's|\$main-color:.*|\$main-color: color.$base04;|' ~/.config/eww/themes/theme.scss ;;
    "purple") sed -i 's|\$main-color:.*|\$main-color: color.$base05;|' ~/.config/eww/themes/theme.scss ;;
    "cyan") sed -i 's|\$main-color:.*|\$main-color: color.$base06;|' ~/.config/eww/themes/theme.scss ;;
    "white") sed -i 's|\$main-color:.*|\$main-color: color.$base07;|' ~/.config/eww/themes/theme.scss ;;
    "grey") sed -i 's|\$main-color:.*|\$main-color: color.$base08;|' ~/.config/eww/themes/theme.scss ;;
    *) echo "No color selected" ;;
esac
