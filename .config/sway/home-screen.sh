#!/bin/bash
swaymsg "exec alacritty"
sleep 0.3s
swaymsg "split vertical"
swaymsg "exec alacritty"
sleep 0.3s
swaymsg "focus parent"
swaymsg "exec firefox"
sleep 0.5s
swaymsg "resize grow width 35ppt"
