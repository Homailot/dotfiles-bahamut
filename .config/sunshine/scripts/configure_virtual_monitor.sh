#!/bin/bash

hyprctl keyword monitor DP-1,disable
hyprctl keyword monitor DP-2,disable

hyprctl output create headless headless-3 
hyprctl keyword monitor headless-3,${SUNSHINE_CLIENT_WIDTH}x${SUNSHINE_CLIENT_HEIGHT}@${SUNSHINE_CLIENT_FPS},auto,1,bitdepth,10,cm,hdr

hyprctl dispatch focusmonitor headless-3
hyprctl dispatch focusworkspaceoncurrentmonitor 9

systemctl --user stop waybar
systemctl --user stop hypridle.service
