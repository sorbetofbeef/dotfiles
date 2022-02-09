#!/usr/bin/env bash

killall waybar
waybar &

riverctl default-layout rivertile &
exec rivertile -main-ratio 0.5 -view-padding 5 -outer-padding 8 &

killall foot
foot --server &

killall mako
mako &

killall wl-paste
wl-paste -t text --watch clipman store & disown

killall oguri
oguri &
