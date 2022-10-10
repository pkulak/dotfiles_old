#!/bin/bash
swaymsg "workspace 1"
swaymsg "exec flatpak run org.mozilla.firefox"
swaymsg "exec flatpak run im.riot.Riot --enable-features=UseOzonePlatform --ozone-platform=wayland"
sleep 2s
swaymsg "splitv"
swaymsg "layout tabbed"
swaymsg "resize grow width 20ppt"
