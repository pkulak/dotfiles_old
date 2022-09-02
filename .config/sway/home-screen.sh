#!/bin/bash
swaymsg "exec flatpak run org.mozilla.firefox"
swaymsg "exec alacritty"
swaymsg "exec flatpak run im.riot.Riot --enable-features=UseOzonePlatform --ozone-platform=wayland"
sleep 2s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 9"
swaymsg "exec flatpak run org.mozilla.firefox www.fastmail.com"
swaymsg "exec distrobox-enter -n arch -- sublime-music"
sleep 2s 
swaymsg "workspace 1"
swaymsg reload
