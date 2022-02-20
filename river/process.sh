#!/usr/bin/env bash

killall waybar
waybar &

riverctl default-layout stacktile &
exec stacktile --primary-ratio 0.65 --secondary-count=2 --secondary-sublayout=stack --inner-padding 5 --outer-padding 2 &

killall mako
mako &

killall wl-paste
wl-paste -t text --watch clipman store & disown 

killall oguri
oguri &
