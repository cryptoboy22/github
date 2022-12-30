#!/bin/bash

swaync-client -d
pactl set-sink-mute @DEFAULT_SINK@ 1
systemctl suspend-then-hibernate
#swaylock -i $HOME/images/wallpaper/pexels-bob-clark-21492.jpg
swaync-client -d
#pactl set-sink-mute @DEFAULT_SINK@ 0
exit 1
