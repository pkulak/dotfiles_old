#!/bin/bash
swaymsg "exec alacritty"
sleep 1s
swaymsg "exec firefox"
sleep 3s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 10"
swaymsg "exec element-desktop"
swaymsg "exec spotify"
sleep 3s 
swaymsg "workspace 1"
