#!/usr/bin/env bash

killall waybar
waybar &

killall wezterm-mux-server
wezterm-mux-server & 2> $XDG_STATE_HOME/logs/wezterm.log >&2 

riverctl default-layout stacktile &
exec stacktile --primary-ratio 0.60 --secondary-ratio 0.65 --inner-padding 5 --outer-padding 10 & 2> $XDG_STATE_HOME/logs/stacktile.log >&2

killall mako
mako &

killall wl-paste
wl-paste -t text --watch clipman store & disown 

killall oguri
oguri &
