#!/bin/bash

start_program ()
{
  args=("$@")
  if [[ $(pgrep -c "${args[0]}") -gt 0 ]]; then
    pkill "${args[0]}"
  fi
  if [[ -z ${args[1]} ]]; then
    "${args[0]}"
  else
    "${args[0]}" "${args[@]}"
  fi
  return 0
}
# ## test for an existing bus daemon, just to be safe
# if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#     ## if not found, launch a new one
#     eval "$(dbus-launch --sh-syntax)"
#     echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
# fi


start_program swww init &&
swww img /home/me/media/pics/wp/mononoke_wp.png &

start_program waybar &

start_program mako &

start_program pipewire &
start_program pipewire-pulse &

start_program /usr/libexec/polkit-gnome-authentication-agent-1 &
