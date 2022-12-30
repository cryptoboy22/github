#!/bin/bash

  if (ps aux | grep waybar | grep -v grep | grep -v waybarstartstop > /dev/null)
  then
      pkill -f waybar
  else
      waybar -c ~/.config/waybar/config_hypr --style ~/.config/waybar/style_hypr.css &
  fi

\""
