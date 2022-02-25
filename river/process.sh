#!/usr/bin/env bash

killall waybar
waybar &

riverctl default-layout stacktile &
exec stacktile --primary-ratio 0.60 --secondary-ratio 0.65 --inner-padding 5 --outer-padding 10 &

killall mako
mako &

killall wl-paste
wl-paste -t text --watch clipman store & disown 

killall oguri
oguri &
