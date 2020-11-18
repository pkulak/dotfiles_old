#!/bin/bash
swaymsg "exec alacritty"
sleep 1s
swaymsg "split vertical"
swaymsg "focus parent"
swaymsg "exec firefox"
sleep 3s
swaymsg "split vertical"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 10"
swaymsg "exec signal-desktop"
swaymsg "exec spotify"
sleep 1s 
swaymsg "workspace 1"
