#!/usr/bin/env bash
# ~/.config/zsh/.zlogin
# SCRIPTS AND COMMANDS TO RUN AT LOGIN

source "${XDG_CONFIG_HOME}/lf/icons"

eval $(dbus-launch)
export DBUS_SESSION_BUS_ADDRESS 
export DBUS_SESSION_BUS_PID

gpg-connect-agent UPDATESTARTUPTTY /bye &

# /bin/mkdir -p "$HOME/.cache/ncspot/librespot" &
# /bin/cp "$HOME/.local/share/ncspot/credentials.json" "$HOME/.cache/ncspot/librespot/" &>/dev/null

[ "/dev/tty1" = "$(tty)" ] && seatd-launch river &
