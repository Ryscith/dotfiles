#!/usr/bin/env sh

ART_URL=$(playerctl --player=spotify metadata mpris:artUrl)

curl -s --output $HOME/Pictures/album_art ${ART_URL}

eww update album_art_location="/home/ryscith/Pictures/album_art"
