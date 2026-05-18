#!/bin/bash

hyprctl eval 'hl.monitor({output = "DP-1", disabled = true })'
hyprctl eval 'hl.monitor({output = "DP-2", disabled = true })'

hyprctl output create headless headless-3 

start='hl.monitor({output = "headless-3", mode = "'
mode="${SUNSHINE_CLIENT_WIDTH}x${SUNSHINE_CLIENT_HEIGHT}@${SUNSHINE_CLIENT_FPS}"
end='", position = "auto", scale = 1, bitdepth = 10, cm = "hdr", disabled = false })'

hyprctl eval "$start$mode$end"

hyprctl dispatch 'hl.dsp.focus({ monitor = "headless-3" })'
hyprctl dispatch 'hl.dsp.focus({ workspace = 9, on_current_monitor = true })'

systemctl --user stop waybar
systemctl --user stop hypridle.service
