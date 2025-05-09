THEME=$(echo -e "rose-pine\nrose-pine-dawn\noxocarbon\noxocarbon-light\ntokyonight-storm\ntokyonight-day\neverforest\neverforest-light\nmoonfly\ndracula" | wofi --dmenu --prompt "Select Theme" --conf ~/.config/wofi/settings/config)

case $THEME in
    "rose-pine") wal --theme rose-pine ;;
    "oxocarbon") wal --theme oxocarbon ;;
    "oxocarbon-light") wal --theme oxocarbon-light ;;
    "rose-pine-dawn") wal --theme rose-pine-dawn ;;
    "tokyonight-storm") wal --theme tokyonight-storm ;;
    "tokyonight-day") wal --theme tokyonight-day ;;
    "everforest") wal --theme everforest ;;
    "everforest-light") wal --theme everforest-light ;;
    "moonfly") wal --theme moonfly ;;
    "dracula") wal --theme dracula ;;
    *) echo "No theme selected" ;;
esac

eww reload
