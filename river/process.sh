#!/usr/bin/env bash

pkill waybar
waybar &

# # riverctl default-layout rivertile &
# # exec rivertile -main-ratio 0.5 -view-padding 5 -outer-padding 8 &

# # pkill foot
# # foot --server &

pkill mako
mako &

pkill wl-paste
wl-paste -t text --watch clipman store & disown

# pkill polkit-gnome-authentication-agent-1 
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# pkill 1password
# 1password --silent &

pkill wireplumber
pkill pipewire-pulse
pkill pipewire
dbus-run-session pipewire &
pipewire-pulse &

pkill swww
swww init &&
swww img "$HOME/media/wp/kanagawa.jpg" &

gsettings set org.gnome.desktop.interface gtk-theme Desert-Blue-light
gsettings set org.gnome.desktop.interface icon-theme 'Kora Light'
# gsettings set org.gnome.desktop.interface cursor-theme cz-Hickson-Black'
# gsettings set org.gnome.desktop.interface cursor-size 16'

gsettings set org.gnome.desktop.wm.preference theme Desert-Blue-light
gsettings set org.gnome.desktop.wm.preference button-layout close,spacer,maximize,minimize:menu
