#!/bin/bash

class=$(playerctl metadata --player=spotify --format '{{lc(status)}}')

if [[ $class == "playing" ]]; then
  info=$(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')
  if [[ ${#info} > 40 ]]; then
    info=$(echo $info | cut -c1-40)"..."
  fi
  text=$info 
elif [[ $class == "paused" ]]; then
  text=""
elif [[ $class == "stopped" ]]; then
  text=""
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"
