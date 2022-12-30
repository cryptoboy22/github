#!/bin/bash

swaync-client -d
pactl set-sink-mute @DEFAULT_SINK@ 1
$HOME/scripts/sleep2.sh &
swaylock --clock --indicator --screenshots --effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 4x2 --datestr "%a %e.%m.%Y" --timestr "%k:%M"
#swaylock -i $HOME/images/wallpaper/pexels-bob-clark-21492.jpg
swaync-client -d
#pactl set-sink-mute @DEFAULT_SINK@ 0
exit 1

