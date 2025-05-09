THEME=$(echo -e "red\ngreen\nyellow\nblue\npurple\ncyan\nwhite\ngrey" | wofi --dmenu --prompt "Select Color" --conf ~/.config/wofi/settings/config)

case $THEME in
    "red") sed -i 's|\$main-color:.*|\$main-color: \$color1;|' ~/.config/eww/scss/var.scss ;;
    "green") sed -i 's|\$main-color:.*|\$main-color: \$color2;|' ~/.config/eww/scss/var.scss ;;
    "yellow") sed -i 's|\$main-color:.*|\$main-color: \$color3;|' ~/.config/eww/scss/var.scss ;;
    "blue") sed -i 's|\$main-color:.*|\$main-color: \$color4;|' ~/.config/eww/scss/var.scss ;;
    "purple") sed -i 's|\$main-color:.*|\$main-color: \$color5;|' ~/.config/eww/scss/var.scss ;;
    "cyan") sed -i 's|\$main-color:.*|\$main-color: \$color6;|' ~/.config/eww/scss/var.scss ;;
    "white") sed -i 's|\$main-color:.*|\$main-color: \$color7;|' ~/.config/eww/scss/var.scss ;;
    "grey") sed -i 's|\$main-color:.*|\$main-color: \$color8;|' ~/.config/eww/scss/var.scss ;;
    *) echo "No color selected" ;;
esac
