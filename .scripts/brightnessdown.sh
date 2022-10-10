#!/bin/sh
source ~/.dwm/update_bar.sh

light -U 5

brightness="$(xbacklight -get)"
bar=$(seq -s "─" $(($brightness / 5)) |  sed 's/[0-9]//g')

dunstify -i /usr/share/icons/Papirus-Dark/16x16/panel/gpm-brightness-lcd.svg -r 2593 -u normal "   $bar"

update_bar_with_brightness