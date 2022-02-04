#!/bin/bash
swaymsg "exec alacritty"
sleep 1s
swaymsg "exec firefox"
sleep 2s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 10"
swaymsg "exec spotify"
swaymsg "exec element-desktop"
sleep 2s 
swaymsg "workspace 1"
