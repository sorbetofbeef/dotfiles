export LANG='en_US.UTF-8'
# export LC_ALL='en_US.UTF-8'
export LC_COLLATE='C'

# export XDG_RUNTIME_DIR=/run/users/1000

export GIT_PAGER="/home/me/.local/share/cargo/bin/delta"

export EDITOR='/usr/local/bin/nvim'
export VISUAL='/usr/local/bin/nvim'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GOPATH="$XDG_DATA_HOME/go"
# export RUSTC_WRAPPER="$CARGO_HOME/bin/sccache"

export RANGER_LOAD_DEFAULT_RC=false

export NEOVIDE_MULTIGRID=true
export NEOVIDE_FRAMELESS=true
export FZF_DEFAULT_COMMAND='rg --files --smart-case'
export FZF_DEFAULT_OPTS='-m --height 50% --border'

# YouTube API Key
export YT_API_KEY='AIzaSyDIIu9Bx5jwTDfkmRURZ95yC2FdmEcrQpo'

# Helix
# export HELIX_RUNTIME="$HOME/.config/helix/runtime"

# lf icons
source ~/.config/lf/icons

export GDK_BACKEND="wayland"
export GTK_CSD="1"
export MOZ_ENABLE_WAYLAND="1"
export MOZ_USE_XINPUT2="1"

# qt
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_QPA_PLATFORM="wayland"
export QT_WAYLAND_DISABLE_WINDOWDECORATION="0"

export JETBRAINS_TOOLBOX_NO_SOFTWARE_OPEN_GL=true
export ELECTRON_FLAGS="--enable-features=WaylandWindowDecorations --ozone-platform-hint=auto"

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY=$(tty)
if [[ -n "$SSH_CONNECTION" ]] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi
gpgconf --launch gpg-agent

for file in ~/.config/environment.d/*.sh; do
  source $file
done

PATH="$XDG_DATA_HOME"/flutter/bin:"$XDG_DATA_HOME"/flutter:"$PATH"
PATH="$HOME"/.yarn/bin:"$PATH"
PATH="$HOME"/.local/libexec:"$HOME"/.local/bin:"$CARGO_HOME"/bin:"$RUSTUP_HOME"/bin:"$GOPATH"/bin:"$PATH"

