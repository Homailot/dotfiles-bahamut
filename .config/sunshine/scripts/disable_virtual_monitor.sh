#!/bin/bash

hyprctl keyword monitor headless-3,disable

sleep 2

hyprctl output remove headless-3

sleep 2

hyprctl keyword monitor DP-1,auto,auto-left,1
hyprctl keyword monitor DP-2,auto,auto-right,1

systemctl --user start waybar
systemctl --user start hypridle.service
