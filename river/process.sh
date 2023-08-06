#!/usr/bin/env bash

gsettings set org.gnome.desktop.interface gtk-theme 
gsettings set org.gnome.desktop.interface icon-theme 'kora-light'
gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"
gsettings set org.gnome.desktop.interface cursor-size 22

gsettings set org.gnome.desktop.wm.preference theme Dracula-slim
gsettings set org.gnome.desktop.wm.preference button-layout close,spacer,maximize,minimize:menu

pkill swww
swww init &&
swww img "$HOME/media/pics/wp/mononoke_wp.png" &


pkill kanshi
kanshi &

stacktile
