#!/bin/bash

music_dir="$HOME/Music"
song_title=$(ncmpcpp --current-song "%t" 2>/dev/null | tr -d '/<>:"\|?*' | sed 's/ /_/g')
artist_name=$(ncmpcpp --current-song "%a" 2>/dev/null | tr -d '/<>:"\|?*' | sed 's/ /_/g')
current_file=$(ncmpcpp --current-song "%f" 2>/dev/null)

output_cover="/tmp/${song_title}-${artist_name}.png"

ffmpeg -i "$music_dir/$current_file" -an -vcodec copy "$output_cover" -y 2>/dev/null

if [ -f "$output_cover" ]; then
  notify-send "Now Playing" "$(ncmpcpp --current-song "%t - %a" 2>/dev/null)" -i "$output_cover"
else
  notify-send "Now Playing" "$(ncmpcpp --current-song "%t - %a" 2>/dev/null)"
fi
