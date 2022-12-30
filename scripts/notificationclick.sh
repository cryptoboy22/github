#!/bin/bash

# Extract the app name from the notification
app_name=$(echo "$1" | grep -oP '(?<=AppName: ).*(?=,)')

# Switch to the workspace of the app
hyprctl workspace "$app_name"
