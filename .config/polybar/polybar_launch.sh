#! /bin/bash

# Terminate any running instances
killall -q polybar

# Make sure Xresources contains wall colors before launching
xrdb -merge ~/.cache/wal/colors.Xresources &&

polybar --config=~/.config/polybar/rounded_gaps_bar main & disown