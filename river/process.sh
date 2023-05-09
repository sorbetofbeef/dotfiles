#!/usr/bin/env bash

killall kile
killall waybar
waybar &

# riverctl default-layout rivertile &
# exec rivertile -main-ratio 0.5 -view-padding 5 -outer-padding 8 &

# killall foot
# foot --server &

killall mako
mako &

killall wl-paste
wl-paste -t text --watch clipman store & disown

killall polkit-gnome-authentication-agent-1 
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

killall 1password
1password --silent &

killall swww
swww init &&
swww img "$HOME/media/wp/current-bg" &

# exec kile -n 'default' -l "(( ver: hor (( hor: full deck ) 1 0.62 0)) 1 0.6 0)"
 # kile --namespace 'kile' --layout "(( ver: full deck ) 1 0.6 0)"
 exec kile --namespace 'kile' --layout "((v:
  ((h: f d) 1 0.62)
  ((h: f d) 1 0.62)) 1 0.6 1)"

