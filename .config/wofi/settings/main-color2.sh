THEME=$(echo -e "red\ngreen\nyellow\nblue\npurple\ncyan\nwhite\ngrey" | wofi --dmenu --prompt "Select Color" --conf ~/.config/wofi/settings/config)

case $THEME in
    "red") sed -i 's|\$main-color2:.*|\$main-color2: \$color1;|' ~/.config/eww/scss/var.scss ;;
    "green") sed -i 's|\$main-color2:.*|\$main-color2: \$color2;|' ~/.config/eww/scss/var.scss ;;
    "yellow") sed -i 's|\$main-color2:.*|\$main-color2: \$color3;|' ~/.config/eww/scss/var.scss ;;
    "blue") sed -i 's|\$main-color2:.*|\$main-color2: \$color4;|' ~/.config/eww/scss/var.scss ;;
    "purple") sed -i 's|\$main-color2:.*|\$main-color2: \$color5;|' ~/.config/eww/scss/var.scss ;;
    "cyan") sed -i 's|\$main-color2:.*|\$main-color2: \$color6;|' ~/.config/eww/scss/var.scss ;;
    "white") sed -i 's|\$main-color2:.*|\$main-color2: \$color7;|' ~/.config/eww/scss/var.scss ;;
    "grey") sed -i 's|\$main-color2:.*|\$main-color2: \$color8;|' ~/.config/eww/scss/var.scss ;;
    *) echo "No color selected" ;;
esac
