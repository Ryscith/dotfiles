#!/bin/sh
source ~/.dwm/update_bar.sh

/usr/bin/pactl set-sink-mute @DEFAULT_SINK@ toggle

mute="$(/usr/bin/pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')"
vol=$(/usr/bin/pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')
bar=$(seq -s "─" $(($vol / 5)) |  sed 's/[0-9]//g')

if [[ "$mute" == "no" ]]
then
    dunstify -i /usr/share/icons/Papirus-Dark/16x16/panel/volume-level-high-panel.svg -r 2593 -u normal "   $bar"
else
    dunstify -i /usr/share/icons/Papirus-Dark/16x16/panel/volume-level-muted-panel.svg -r 2593 -u normal "   $bar"
fi

update_bar