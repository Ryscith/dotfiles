#!/bin/sh
# source ~/.dwm/update_bar.sh

nitrogen --restore &
picom --experimental-backends &
numlockx &
dunst &
# xrdb -merge ~/.cache/wal/colors.Xresources &

# Uncomment if using default DWM bar
# while true; do
#     update_bar
#     sleep 30s
# done &