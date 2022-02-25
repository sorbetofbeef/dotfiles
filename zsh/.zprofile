# ~/.config/zsh/zprofile
#
# Sources at login
# NOTE: kind of hacked a sort of pseudo "prop drilling" behavior with env vars
#					/etc/enviornment sets $ZDOTDIR to /etc/zsh which in turns sets it to
#					${XDG_CONFIG_HOME}/zsh.
#
#					This has to be a thing for 2 reasons:
#						A) I cant stand having config files outside of $XDG_CONFIG_DIR
#						B) /etc/enviornment has no idea what ${HOME} is when it passes its 
#							env vars to the shell. I know im the only user but still...
#
#	TODO: Theres a better way to do source $ZDOTDIR to the correct location 
#				I must have been high as a mother fucker when i came up with that lol
#
#

# ENVIORNMENTAL VARIABLES

export LC_CTYPE='en_US.UTF-8'

export XDG_SESSION_TYPE="wayland"
export XDG_SESSION_DESKTOP="river"
export XDG_CURRENT_DESKTOP="river"
export DESKTOP_SESSION="river"

export XKB_DEFAULT_LAYOUT="us"
export XKB_DEFAULT_OPTIONS="altwin:swap_lalt_lwin,caps:ctrl_modifier"

# Default programs
export EDITOR='nvim'
export VISUAL='nvim'
export READER='zathura'
export PAGER='bat'
export TERM="xterm-kitty"
export TERMINFO=/usr/share/terminfo/

# Default directories
export XDG_RUNTIME_DIR='/run/user/1000'
export XDG_STATE_HOME="${HOME}/.local/var"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"

# Keyboard config
export XKB_DEFAULT_OPTIONS='caps:ctrl_modifier,altwin:swap_lalt_lwin'

# Less
export LESS=-R
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export LESSHISTFILE="-"

# Fnm node version manager
export FNM_DIR="${XDG_CONFIG_HOME}/fnm"

# npm
export npm_config_user="${XDG_CONFIG_HOME}/npmrc"
export npm_config_cachedir="${XDG_CACHE_HOME}/npm"

# Make
export MAKEFLAGS='-j16'

# C/C++
export CFLAGS='-march=native -O3'

# Rust
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"

# Go
export GOPATH="${XDG_DATA_HOME}/go"

# {Java,Type}script and (Nodejs Yarn)
export npm_config_user="${XDG_CONFIG_HOME}/npmrc"
export npm_config_cachedir="${XDG_CACHE_HOME}/npm"

# Zsh
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# GnuPG
export PINENTRY_BINARY="/usr/bin/pinentry-curses"
GPG_TTY=$(tty)
export GPG_TTY

# Xorg Installation Enviorn
# XORG_CONFIG_PREFIX="--prefix=${XORG_PREFIX}" 
# XORG_CONFIG_SYSCONF="--sysconfdir=/etc" 
# XORG_CONFIG_LOCAL_STATE="--localstatedir=/var" 
# XORG_CONFIG_DISABLE_STATIC="--disable-static"
# export XORG_PREFIX='/usr'
#export XORG_CONFIG=$XORG_CONFIG_PREFIX $XORG_CONFIG_SYSCONF $XORG_CONFIG_LOCAL_STATE $XORG_CONFIG_DISABLE_STATIC

# Paths
# export LD_LIBRARY_PATH=$XDG_DATA_HOME/lib:$XDG_DATA_HOME/lib/python3.10/site-packages:$LD_LIBRARY_PATH
# export MANPATH=$HOME/.local/share/man:$MANPATH
PATH="${HOME}/.local/bin:${HOME}/.yarn/bin:${XDG_DATA_HOME}/zig:${GOPATH}/bin:${RUSTUP_HOME}/bin:${CARGO_HOME}/bin:/usr/local/go/bin:/opt:/usr/local/bin:/usr/local/sbin:$PATH:/usr/sbin:/sbin"
export PATH

# SCRIPTS AND COMMANDS TO RUN AT LOGIN

source "${XDG_CONFIG_HOME}/lf/icons"

eval $(dbus-launch)
export DBUS_SESSION_BUS_ADDRESS 
export DBUS_SESSION_BUS_PID

gpg-connect-agent UPDATESTARTUPTTY /bye 

 [ "/dev/tty1" = "$(tty)" ] && exec seatd-launch river
 
