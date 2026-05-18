#!/bin/bash

hyprctl eval 'hl.monitor({ output = "DP-1", mode = "preferred", position = "auto-left", scale = "1.07", disabled = false })'
hyprctl eval 'hl.monitor({ output = "DP-2", mode = "preferred", position = "auto-right", scale = "1.07", disabled = false })'

sleep 2

hyprctl eval 'hl.monitor({output = "headless-3", disabled = true })'

sleep 2

hyprctl output remove headless-3

sleep 2

systemctl --user start waybar
systemctl --user start hypridle.service
