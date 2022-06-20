#!/bin/bash
swaymsg "exec firefox"
swaymsg "exec alacritty"
sleep 2s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 9"
swaymsg "exec sublime-music"
sleep 1s
swaymsg "exec element-desktop"
sleep 2s 
swaymsg "workspace 1"
swaymsg reload
