#!/bin/bash

exec swayidle -w \
        timeout 360 'scripts/lock.sh &' \
        timeout 420 'hyprctl dispatch dpms off' \
        timeout 1800 'systemctl suspend-then-hibernate' \
        resume 'hyprctl dispatch dpms on' \
        before-sleep 'scripts/lock.sh &'
