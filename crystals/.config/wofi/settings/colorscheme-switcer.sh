THEME=$(echo -e "rose-pine\nrose-pine-dawn\noxocarbon\noxocarbon-light\ntokyonight-storm\ntokyonight-day\neverforest\neverforest-light\nmoonfly\ndracula\nyoru\neverblush" | wofi --dmenu --prompt "Select Theme" --conf ~/.config/wofi/settings/config)

case $THEME in
    "rose-pine") ~/.config/eww/bin/colorscheme.sh rose-pine ;;
    "oxocarbon") ~/.config/eww/bin/colorscheme.sh oxocarbon ;;
    "oxocarbon-light") ~/.config/eww/bin/colorscheme.sh oxocarbon-light ;;
    "rose-pine-dawn") ~/.config/eww/bin/colorscheme.sh rose-pine-dawn ;;
    "tokyonight-storm") ~/.config/eww/bin/colorscheme.sh tokyonight-storm ;;
    "tokyonight-day") ~/.config/eww/bin/colorscheme.sh tokyonight-day ;;
    "everforest") ~/.config/eww/bin/colorscheme.sh everforest ;;
    "everforest-light") ~/.config/eww/bin/colorscheme.sh everforest-light ;;
    "moonfly") ~/.config/eww/bin/colorscheme.sh moonfly ;;
    "dracula") ~/.config/eww/bin/colorscheme.sh dracula ;;
    "yoru") ~/.config/eww/bin/colorscheme.sh yoru ;;
    "everblush") ~/.config/eww/bin/colorscheme.sh everblush ;;
    *) echo "No theme selected" ;;
esac

# eww reload
