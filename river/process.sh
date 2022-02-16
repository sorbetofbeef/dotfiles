#!/usr/bin/env bash

killall waybar
waybar &

riverctl default-layout stacktile &
exec stacktile --primary-ratio 0.6 --secondary-count=1 --inner-padding 5 --outer-padding 8 &

killall foot
foot --server &

killall mako
mako &

killall wl-paste
wl-paste -t text --watch clipman store &
wl-paste -t text --watch clipman store & disown 

killall oguri
oguri &
