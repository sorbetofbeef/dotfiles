#!/bin/bash

# Session
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=river
export XDG_CURRENT_DESKTOP=river
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export QT_QPA_PLATFORMTHEME=qt5ct
export DISPLAY=
export _JAVA_AWT_WM_NONREPARENTING=1

export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export MANPAGER=bat
export BAT_THEME=ansi

