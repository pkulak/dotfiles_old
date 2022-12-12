#!/bin/bash
swaymsg "exec flatpak run org.mozilla.firefox"
swaymsg "exec footclient distrobox enter arch -- /usr/bin/fish"
swaymsg "exec flatpak run im.riot.Riot --enable-features=UseOzonePlatform --ozone-platform=wayland"
sleep 3s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 35ppt"
swaymsg "workspace 9"
swaymsg "exec distrobox-enter -n arch -- sublime-music"
sleep 3s 
swaymsg "workspace 1"
swaymsg reload
