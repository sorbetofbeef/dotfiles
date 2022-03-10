# ~/.config/zsh/.zlogin
# SCRIPTS AND COMMANDS TO RUN AT LOGIN

source "${XDG_CONFIG_HOME}/lf/icons"

eval $(dbus-launch)
export DBUS_SESSION_BUS_ADDRESS 
export DBUS_SESSION_BUS_PID

gpg-connect-agent UPDATESTARTUPTTY /bye 

cp -r $HOME/.local/share/ncspot $HOME/.cache

 [ "/dev/tty1" = "$(tty)" ] && seatd-launch river
