#!/bin/bash

mod="Mod4"

riverctl map normal $mod Return spawn "wezterm-gui connect" &

riverctl map normal $mod P spawn pass &
riverctl map normal $mod Q spawn power-menu &
riverctl map normal $mod Space spawn run &

riverctl map normal $mod W close &
riverctl map normal $mod J focus-view next &
riverctl map normal $mod K focus-view previous &
riverctl map normal $mod+Shift J swap next &
riverctl map normal $mod+Shift K swap previous &
riverctl map normal $mod Period focus-output next &
riverctl map normal $mod Comma focus-output previous &
riverctl map normal $mod+Shift Period send-to-output next &
riverctl map normal $mod+Shift Comma send-to-output previous &

riverctl map normal $mod+Shift Return zoom &
riverctl map normal $mod H send-layout-cmd stacktile "primary_ratio -0.05" &
riverctl map normal $mod L send-layout-cmd stacktile "primary_ratio +0.05" &
riverctl map normal $mod M send-layout-cmd stacktile "outer_padding 0" &
riverctl map normal $mod+Shift M send-layout-cmd stacktile "outer_padding 10" &
riverctl map normal $mod+Shift H send-layout-cmd stacktile "primary_count +1" &
riverctl map normal $mod+Shift L send-layout-cmd stacktile "primary_count -1" &
riverctl map normal $mod+Shift Up    send-layout-cmd stacktile "primary_location top" &
riverctl map normal $mod+Shift Right send-layout-cmd stacktile "primary_location right" &
riverctl map normal $mod+Shift Down  send-layout-cmd stacktile "primary_location bottom" &
riverctl map normal $mod+Shift Left  send-layout-cmd stacktile "primary_location left" &

riverctl map normal $mod+Mod1 H move left 100 &
riverctl map normal $mod+Mod1 J move down 100 &
riverctl map normal $mod+Mod1 K move up 100 &
riverctl map normal $mod+Mod1 L move right 100 &
riverctl map normal $mod+Mod1+Control H snap left &
riverctl map normal $mod+Mod1+Control J snap down &
riverctl map normal $mod+Mod1+Control K snap up &
riverctl map normal $mod+Mod1+Control L snap right &
riverctl map normal $mod+Mod1+Shift H resize horizontal -100 &
riverctl map normal $mod+Mod1+Shift J resize vertical 100 &
riverctl map normal $mod+Mod1+Shift K resize vertical -100 &
riverctl map normal $mod+Mod1+Shift L resize horizontal 100 &

riverctl map-pointer normal $mod BTN_LEFT move-view &
riverctl map-pointer normal $mod BTN_RIGHT resize-view &

for i in $(seq 1 4)
do
    tags=$((1 << ("$i" - 1)))
    riverctl map normal $mod "$i" set-focused-tags $tags &
    riverctl map normal $mod+Shift "$i" set-view-tags $tags &
    riverctl map normal $mod+Control "$i" toggle-focused-tags $tags &
    riverctl map normal $mod+Shift+Control "$i" toggle-view-tags $tags &
done &

all_tags=$(((1 << 32) - 1))
riverctl map normal $mod 0 toggle-focused-tags $all_tags &
riverctl map normal $mod+Shift 0 toggle-view-tags $all_tags &
riverctl map normal $mod F toggle-float &

riverctl declare-mode passthrough &
riverctl map normal $mod F11 enter-mode passthrough &
riverctl map passthrough $mod F11 enter-mode normal &

for mode in normal locked
do
    riverctl map $mode None XF86Eject spawn 'eject -T' &
    riverctl map $mode None XF86AudioRaiseVolume  spawn 'pactl set-sink-volume alsa_output.pci-0000_07_00.6.analog-stereo +5%' &
    riverctl map $mode None XF86AudioLowerVolume  spawn 'pactl set-sink-volume alsa_output.pci-0000_07_00.6.analog-stereo -5%' &
    riverctl map $mode $mod Up spawn 'mpc toggle' &
    riverctl map $mode $mod Down  spawn 'mpc random' &
    riverctl map $mode $mod Left  spawn 'mpc previous' &
    riverctl map $mode $mod Right  spawn 'mpc next' &
    riverctl map $mode None XF86MonBrightnessUp   spawn 'light -A 5' &
    riverctl map $mode None XF86MonBrightnessDown spawn 'light -U 5' &
done &
