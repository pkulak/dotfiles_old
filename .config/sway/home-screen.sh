#!/bin/bash
swaymsg "exec firefox"
swaymsg "exec alacritty"
sleep 2s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 10"
swaymsg "exec firefox music.kulak.us"
swaymsg "exec element-desktop"
sleep 2s 
swaymsg "workspace 1"
