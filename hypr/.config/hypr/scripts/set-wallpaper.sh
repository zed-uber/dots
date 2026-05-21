#!/usr/bin/env bash
WALL_DIR="$HOME/Pictures/wallpapers"

if [[ -n "$1" ]]; then
    WALLPAPER="$1"
else
    WALLPAPER=$(find "$WALL_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) | shuf -n 1)
fi

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

wal -i "$WALLPAPER" -q
