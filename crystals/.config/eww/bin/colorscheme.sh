#!/bin/bash

case "$1" in
  rose-pine)
    sed -i 's|@forward ".*";|@forward "rose-pine.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "rose-pine.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/rose-pine.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/rose-pine.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/rose-pine"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/rose-pine.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#26233a\033\\' > "$term"   # base00
      printf '\033]4;1;#eb6f92\033\\' > "$term"   # base01
      printf '\033]4;2;#31748f\033\\' > "$term"   # base02
      printf '\033]4;3;#f6c177\033\\' > "$term"   # base03
      printf '\033]4;4;#9ccfd8\033\\' > "$term"   # base04
      printf '\033]4;5;#c4a7e7\033\\' > "$term"   # base05
      printf '\033]4;6;#ebbcba\033\\' > "$term"   # base06
      printf '\033]4;7;#e0def4\033\\' > "$term"   # base07
      printf '\033]4;8;#6e6a86\033\\' > "$term"   # base08
      printf '\033]4;9;#eb6f92\033\\' > "$term"   # base09
      printf '\033]4;10;#31748f\033\\' > "$term"  # base10
      printf '\033]4;11;#f6c177\033\\' > "$term"  # base11
      printf '\033]4;12;#9ccfd8\033\\' > "$term"  # base12
      printf '\033]4;13;#c4a7e7\033\\' > "$term"  # base13
      printf '\033]4;14;#ebbcba\033\\' > "$term"  # base14
      printf '\033]4;15;#e0def4\033\\' > "$term"  # base15
      printf '\033]10;#e0def4\033\\' > "$term"    # foreground
      printf '\033]11;#191724\033\\' > "$term"    # background
    done
  ;;
  rose-pine-dawn)
    sed -i 's|@forward ".*";|@forward "rose-pine-dawn";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "rose-pine-dawn" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/rose-pine-dawn.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/rose-pine-dawn.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/rose-pine-dawn"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/rose-pine-dawn.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#f2e9e1\033\\' > "$term"   # base00
      printf '\033]4;1;#b4637a\033\\' > "$term"   # base01
      printf '\033]4;2;#286983\033\\' > "$term"   # base02
      printf '\033]4;3;#ea9d34\033\\' > "$term"   # base03
      printf '\033]4;4;#56949f\033\\' > "$term"   # base04
      printf '\033]4;5;#907aa9\033\\' > "$term"   # base05
      printf '\033]4;6;#d7827e\033\\' > "$term"   # base06
      printf '\033]4;7;#575279\033\\' > "$term"   # base07
      printf '\033]4;8;#9893a5\033\\' > "$term"   # base08
      printf '\033]4;9;#b4637a\033\\' > "$term"   # base09
      printf '\033]4;10;#286983\033\\' > "$term"  # base10
      printf '\033]4;11;#ea9d34\033\\' > "$term"  # base11
      printf '\033]4;12;#56949f\033\\' > "$term"  # base12
      printf '\033]4;13;#907aa9\033\\' > "$term"  # base13
      printf '\033]4;14;#d7827e\033\\' > "$term"  # base14
      printf '\033]4;15;#575279\033\\' > "$term"  # base15
      printf '\033]10;#575279\033\\' > "$term"    # foreground
      printf '\033]11;#faf4ed\033\\' > "$term"    # background
    done
  ;;
  oxocarbon)
    sed -i 's|@forward ".*";|@forward "oxocarbon.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "oxocarbon.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/oxocarbon.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/oxocarbon.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/oxocarbon"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/oxocarbon.ini|' ~/.config/foot/foot.ini
  for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#161616\033\\' > "$term"   # base00
      printf '\033]4;1;#ee5396\033\\' > "$term"   # base01
      printf '\033]4;2;#42be65\033\\' > "$term"   # base02
      printf '\033]4;3;#ffe97b\033\\' > "$term"   # base03
      printf '\033]4;4;#33b1ff\033\\' > "$term"   # base04
      printf '\033]4;5;#be95ff\033\\' > "$term"   # base05
      printf '\033]4;6;#3ddbd9\033\\' > "$term"   # base06
      printf '\033]4;7;#f2f4f8\033\\' > "$term"   # base07
      printf '\033]4;8;#525252\033\\' > "$term"   # base08
      printf '\033]4;9;#ee5396\033\\' > "$term"   # base09
      printf '\033]4;10;#42be65\033\\' > "$term"  # base10
      printf '\033]4;11;#ffe97b\033\\' > "$term"  # base11
      printf '\033]4;12;#33b1ff\033\\' > "$term"  # base12
      printf '\033]4;13;#be95ff\033\\' > "$term"  # base13
      printf '\033]4;14;#3ddbd9\033\\' > "$term"  # base14
      printf '\033]4;15;#f2f4f8\033\\' > "$term"  # base15
      printf '\033]10;#dde1e6\033\\' > "$term"    # foreground
      printf '\033]11;#161616\033\\' > "$term"    # background
  done
  ;;
  oxocarbon-light)
    sed -i 's|@forward ".*";|@forward "oxocarbon-light.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "oxocarbon-light.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/oxocarbon-light.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/oxocarbon-light.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/oxocarbon-light"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/oxocarbon-light.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#dde1e6\033\\' > "$term"   # base00
      printf '\033]4;1;#ee5396\033\\' > "$term"   # base01
      printf '\033]4;2;#42be65\033\\' > "$term"   # base02
      printf '\033]4;3;#ffe97b\033\\' > "$term"   # base03
      printf '\033]4;4;#33b1ff\033\\' > "$term"   # base04
      printf '\033]4;5;#be95ff\033\\' > "$term"   # base05
      printf '\033]4;6;#3ddbd9\033\\' > "$term"   # base06
      printf '\033]4;7;#f2f4f8\033\\' > "$term"   # base07
      printf '\033]4;8;#262626\033\\' > "$term"   # base08
      printf '\033]4;9;#ee5396\033\\' > "$term"   # base09
      printf '\033]4;10;#42be65\033\\' > "$term"  # base10
      printf '\033]4;11;#ffe97b\033\\' > "$term"  # base11
      printf '\033]4;12;#33b1ff\033\\' > "$term"  # base12
      printf '\033]4;13;#be95ff\033\\' > "$term"  # base13
      printf '\033]4;14;#3ddbd9\033\\' > "$term"  # base14
      printf '\033]4;15;#161616\033\\' > "$term"  # base15
      printf '\033]10;#161616\033\\' > "$term"    # foreground
      printf '\033]11;#dde1e6\033\\' > "$term"    # background
    done
  ;;
  moonfly)
    sed -i 's|@forward ".*";|@forward "moonfly.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "moonfly.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/moonfly.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/moonfly.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/moonfly"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/moonfly.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#323437\033\\' > "$term"   # base00
      printf '\033]4;1;#ff5d5d\033\\' > "$term"   # base01
      printf '\033]4;2;#8cc85f\033\\' > "$term"   # base02
      printf '\033]4;3;#e3c78a\033\\' > "$term"   # base03
      printf '\033]4;4;#80a0ff\033\\' > "$term"   # base04
      printf '\033]4;5;#cf87e8\033\\' > "$term"   # base05
      printf '\033]4;6;#79dac8\033\\' > "$term"   # base06
      printf '\033]4;7;#c6c6c6\033\\' > "$term"   # base07
      printf '\033]4;8;#949494\033\\' > "$term"   # base08
      printf '\033]4;9;#ff5d5d\033\\' > "$term"   # base09
      printf '\033]4;10;#8cc85f\033\\' > "$term"  # base10
      printf '\033]4;11;#e3c78a\033\\' > "$term"  # base11
      printf '\033]4;12;#80a0ff\033\\' > "$term"  # base12
      printf '\033]4;13;#cf87e8\033\\' > "$term"  # base13
      printf '\033]4;14;#79dac8\033\\' > "$term"  # base14
      printf '\033]4;15;#c6c6c6\033\\' > "$term"  # base15
      printf '\033]10;#bdbdbd\033\\' > "$term"    # foreground
      printf '\033]11;#080808\033\\' > "$term"    # background
    done
  ;;
  tokyonight-storm)
    sed -i 's|@forward ".*";|@forward "tokyonight-storm.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "tokyonight-storm.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/tokyonight-storm.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/tokyonight-storm.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/tokyonight-storm"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/tokyonight-storm.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#1d202f\033\\' > "$term"   # base00
      printf '\033]4;1;#f7768e\033\\' > "$term"   # base01
      printf '\033]4;2;#9ece6a\033\\' > "$term"   # base02
      printf '\033]4;3;#e0af68\033\\' > "$term"   # base03
      printf '\033]4;4;#7aa2f7\033\\' > "$term"   # base04
      printf '\033]4;5;#bb9af7\033\\' > "$term"   # base05
      printf '\033]4;6;#7dcfff\033\\' > "$term"   # base06
      printf '\033]4;7;#a9b1d6\033\\' > "$term"   # base07
      printf '\033]4;8;#2e3c64\033\\' > "$term"   # base08
      printf '\033]4;9;#f7768e\033\\' > "$term"   # base09
      printf '\033]4;10;#9ece6a\033\\' > "$term"  # base10
      printf '\033]4;11;#e0af68\033\\' > "$term"  # base11
      printf '\033]4;12;#7aa2f7\033\\' > "$term"  # base12
      printf '\033]4;13;#bb9af7\033\\' > "$term"  # base13
      printf '\033]4;14;#7dcfff\033\\' > "$term"  # base14
      printf '\033]4;15;#a9b1d6\033\\' > "$term"  # base15
      printf '\033]10;#c0caf5\033\\' > "$term"    # foreground
      printf '\033]11;#24283b\033\\' > "$term"    # background
    done
  ;;
  tokyonight-day)
    sed -i 's|@forward ".*";|@forward "tokyonight-day.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "tokyonight-day.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/tokyonight-day.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/tokyonight-day.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/tokyonight-day"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/tokyonight-day.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#e1e2e7\033\\' > "$term"   # base00
      printf '\033]4;1;#f52a65\033\\' > "$term"   # base01
      printf '\033]4;2;#587539\033\\' > "$term"   # base02
      printf '\033]4;3;#8c6c3e\033\\' > "$term"   # base03
      printf '\033]4;4;#2e7de9\033\\' > "$term"   # base04
      printf '\033]4;5;#9854f1\033\\' > "$term"   # base05
      printf '\033]4;6;#007197\033\\' > "$term"   # base06
      printf '\033]4;7;#6172b0\033\\' > "$term"   # base07
      printf '\033]4;8;#a1a6c5\033\\' > "$term"   # base08
      printf '\033]4;9;#e1e2e7\033\\' > "$term"   # base09
      printf '\033]4;10;#f52a65\033\\' > "$term"  # base10
      printf '\033]4;11;#587539\033\\' > "$term"  # base11
      printf '\033]4;12;#8c6c3e\033\\' > "$term"  # base12
      printf '\033]4;13;#2e7de9\033\\' > "$term"  # base13
      printf '\033]4;14;#9854f1\033\\' > "$term"  # base14
      printf '\033]4;15;#007197\033\\' > "$term"  # base15
      printf '\033]10;#3b4252\033\\' > "$term"    # foreground
      printf '\033]11;#e1e2e7\033\\' > "$term"    # background
    done
  ;;
  everforest)
    sed -i 's|@forward ".*";|@forward "everforest.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "everforest.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/everforest.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/everforest.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/everforest"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/everforest.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#1e2326\033\\' > "$term"   # base00
      printf '\033]4;1;#e67e80\033\\' > "$term"   # base01
      printf '\033]4;2;#a7c080\033\\' > "$term"   # base02
      printf '\033]4;3;#dbbc7f\033\\' > "$term"   # base03
      printf '\033]4;4;#7fbbb3\033\\' > "$term"   # base04
      printf '\033]4;5;#d699b6\033\\' > "$term"   # base05
      printf '\033]4;6;#384b55\033\\' > "$term"   # base06
      printf '\033]4;7;#9da9a0\033\\' > "$term"   # base07
      printf '\033]4;8;#7a8478\033\\' > "$term"   # base08
      printf '\033]4;9;#e67e80\033\\' > "$term"   # base09
      printf '\033]4;10;#a7c080\033\\' > "$term"  # base10
      printf '\033]4;11;#dbbc7f\033\\' > "$term"  # base11
      printf '\033]4;12;#7fbbb3\033\\' > "$term"  # base12
      printf '\033]4;13;#d699b6\033\\' > "$term"  # base13
      printf '\033]4;14;#7fbbb3\033\\' > "$term"  # base14
      printf '\033]4;15;#7a8478\033\\' > "$term"  # base15
      printf '\033]10;#d3c6aa\033\\' > "$term"    # foreground
      printf '\033]11;#1e2326\033\\' > "$term"    # background
    done
  ;;
  everforest-light)
    sed -i 's|@forward ".*";|@forward "everforest-light.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "everforest-light.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/everforest-light.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/everforest-light.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/everforest-light"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/everforest-light.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#5c6a72\033\\' > "$term"   # base00
      printf '\033]4;1;#f85552\033\\' > "$term"   # base01
      printf '\033]4;2;#8da101\033\\' > "$term"   # base02
      printf '\033]4;3;#dfa000\033\\' > "$term"   # base03
      printf '\033]4;4;#3a94c5\033\\' > "$term"   # base04
      printf '\033]4;5;#df69ba\033\\' > "$term"   # base05
      printf '\033]4;6;#3a94c5\033\\' > "$term"   # base06
      printf '\033]4;7;#a6b0a0\033\\' > "$term"   # base07
      printf '\033]4;8;#829181\033\\' > "$term"   # base08
      printf '\033]4;9;#f85552\033\\' > "$term"   # base09
      printf '\033]4;10;#8da101\033\\' > "$term"  # base10
      printf '\033]4;11;#dfa000\033\\' > "$term"  # base11
      printf '\033]4;12;#3a94c5\033\\' > "$term"  # base12
      printf '\033]4;13;#df69ba\033\\' > "$term"  # base13
      printf '\033]4;14;#3a94c5\033\\' > "$term"  # base14
      printf '\033]4;15;#a6b0a0\033\\' > "$term"  # base15
      printf '\033]10;#5c6a72\033\\' > "$term"    # foreground
      printf '\033]11;#efebd4\033\\' > "$term"    # background
      printf '\033]12;#5c6a72\033\\' > "$term"    # cursor
    done
  ;;
  dracula)
    sed -i 's|@forward ".*";|@forward "dracula.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "dracula.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/dracula.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/dracula.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/dracula"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/dracula.ini|' ~/.config/foot/foot.ini
      for term in /dev/pts/[0-9]*; do
        printf '\033]4;0;#21222C\033\\' > "$term"   # base00
        printf '\033]4;1;#FF5555\033\\' > "$term"   # base01
        printf '\033]4;2;#50FA7B\033\\' > "$term"   # base02
        printf '\033]4;3;#F1FA8C\033\\' > "$term"   # base03
        printf '\033]4;4;#BD93F9\033\\' > "$term"   # base04
        printf '\033]4;5;#FF79C6\033\\' > "$term"   # base05
        printf '\033]4;6;#8BE9FD\033\\' > "$term"   # base06
        printf '\033]4;7;#F8F8F2\033\\' > "$term"   # base07
        printf '\033]4;8;#6272A4\033\\' > "$term"   # base08
        printf '\033]4;9;#FF6E6E\033\\' > "$term"   # base09
        printf '\033]4;10;#69FF94\033\\' > "$term"  # base10
        printf '\033]4;11;#FFFFA5\033\\' > "$term"  # base11
        printf '\033]4;12;#D6ACFF\033\\' > "$term"  # base12
        printf '\033]4;13;#FF92DF\033\\' > "$term"  # base13
        printf '\033]4;14;#A4FFFF\033\\' > "$term"  # base14
        printf '\033]4;15;#FFFFFF\033\\' > "$term"  # base15
        printf '\033]10;#F8F8F2\033\\' > "$term"    # foreground
        printf '\033]11;#282A36\033\\' > "$term"    # background
      done
    ;;
  yoru)
    sed -i 's|@forward ".*";|@forward "yoru.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "yoru.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/yoru.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/yoru.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/yoru"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/yoru.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#232526\033\\' > "$term"   # base00
      printf '\033]4;1;#df5b61\033\\' > "$term"   # base01
      printf '\033]4;2;#78b892\033\\' > "$term"   # base02
      printf '\033]4;3;#de8f78\033\\' > "$term"   # base03
      printf '\033]4;4;#6791c9\033\\' > "$term"   # base04
      printf '\033]4;5;#bc83e3\033\\' > "$term"   # base05
      printf '\033]4;6;#67afc1\033\\' > "$term"   # base06
      printf '\033]4;7;#e4e6e7\033\\' > "$term"   # base07
      printf '\033]4;8;#4c4e4f\033\\' > "$term"   # base08
      printf '\033]4;9;#df5b61\033\\' > "$term"   # base09
      printf '\033]4;10;#78b892\033\\' > "$term"  # base10
      printf '\033]4;11;#de8f78\033\\' > "$term"  # base11
      printf '\033]4;12;#6791c9\033\\' > "$term"  # base12
      printf '\033]4;13;#bc83e3\033\\' > "$term"  # base13
      printf '\033]4;14;#67afc1\033\\' > "$term"  # base14
      printf '\033]4;15;#e4e6e7\033\\' > "$term"  # base15
      printf '\033]10;#edeff0\033\\' > "$term"    # foreground
      printf '\033]11;#0c0e0f\033\\' > "$term"    # background
    done
  ;;
  everblush)
    sed -i 's|@forward ".*";|@forward "everblush.scss";|' ~/.config/eww/themes/theme.scss
    sed -i 's|@use ".*" as color;|@use "everblush.scss" as color;|' ~/.config/eww/themes/theme.scss
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/everblush.css";|' ~/.config/wofi/style.css
    sed -i 's|@import "./.config/wofi/themes/.*";|@import "./.config/wofi/themes/everblush.css";|' ~/.config/wofi/wallpaper/style.css
    sed -i 's|"~/.config/sway/themes/.*"|"~/.config/sway/themes/everblush"|' ~/.config/sway/config
    swaymsg reload
    sed -i 's|include=~/.config/foot/themes/.*|include=~/.config/foot/themes/everblush.ini|' ~/.config/foot/foot.ini
    for term in /dev/pts/[0-9]*; do
      printf '\033]4;0;#232a2d\033\\' > "$term"   # base00
      printf '\033]4;1;#e57474\033\\' > "$term"   # base01
      printf '\033]4;2;#8ccf7e\033\\' > "$term"   # base02
      printf '\033]4;3;#e5c76b\033\\' > "$term"   # base03
      printf '\033]4;4;#67b0e8\033\\' > "$term"   # base04
      printf '\033]4;5;#c47fd5\033\\' > "$term"   # base05
      printf '\033]4;6;#6cbfbf\033\\' > "$term"   # base06
      printf '\033]4;7;#b3b9b8\033\\' > "$term"   # base07
      printf '\033]4;8;#38474a\033\\' > "$term"   # base08
      printf '\033]4;9;#e57474\033\\' > "$term"   # base09
      printf '\033]4;10;#8ccf7e\033\\' > "$term"  # base10
      printf '\033]4;11;#e5c76b\033\\' > "$term"  # base11
      printf '\033]4;12;#67b0e8\033\\' > "$term"  # base12
      printf '\033]4;13;#c47fd5\033\\' > "$term"  # base13
      printf '\033]4;14;#6cbfbf\033\\' > "$term"  # base14
      printf '\033]4;15;#b3b9b8\033\\' > "$term"  # base15
      printf '\033]10;#dadada\033\\' > "$term"    # foreground
      printf '\033]11;#141b1e\033\\' > "$term"    # background
    done
  ;;
  *)
    echo "Usage : $0 {colorscheme}"
  ;;
esac

exit 0
