#!/bin/bash



[ -z "$1" ] && exit 1

IMG="$1"

# random grow origin
POS=(
  "0.5,0.5"  # center
  "0.0,0.5"  # left
  "1.0,0.5"  # right
  "0.5,0.0"  # top
  "0.5,1.0"  # bottom
)

RANDOM_POS="${POS[RANDOM % ${#POS[@]}]}"

# set wallpaper
swww img "$IMG" \
  --transition-type grow \
  --transition-pos "$RANDOM_POS" \
  --transition-duration 1.8 \
  --transition-fps 60

# generate colors
matugen image "$IMG"