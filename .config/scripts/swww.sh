if [ $1 ]; then
  swww img "$1" --transition-type="wipe" --transition-fps=60
else
  echo "no wallpaper specified"
fi

