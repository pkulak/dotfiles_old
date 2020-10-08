#!/bin/bash
swaymsg "exec QT_QPA_PLATFORM=wayland telegram-desktop"
sleep 3s
swaymsg "split vertical"
swaymsg "exec alacritty"
sleep 1s
swaymsg "focus parent"
swaymsg "exec firefox"
sleep 3s
swaymsg "split vertical"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "exec spotify"
sleep 3s
swaymsg "move scratchpad"
sleep 3s
playerctl play
