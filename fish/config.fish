# LOGIN
if status is-login
  ## INITIAL SETUP ##
  ## APPLICATION SETTINGS ##
  # xdg standard
  set -Ux XDG_SESSION_TYPE wayland
  set -Ux XDG_SESSION_DESKTOP river
  set -Ux XDG_CURRENT_DESKTOP river
  set -Ux DESKTOP_SESSION river
  set -Ux XDG_CONFIG_HOME $HOME/.config
  set -Ux XDG_DATA_HOME $HOME/.local/share
  set -Ux XDG_CACHE_HOME $HOME/.cache
  #xkb
  set -Ux XKB_DEFAULT_LAYOUT us
  set -Ux XKB_DEFAULT_OPTIONS altwin:swap_lalt_lwin,caps:ctrl_modifier
  # default programs
  set -Ux EDITOR nvim
  set -Ux VISUAL nvim
  # chromium chrome API keys
  # set -Ux GOOGLE_API_KEY AIzaSyDIIu9Bx5jwTDfkmRURZ95yC2FdmEcrQpo
  # set -Ux GOOGLE_DEFAULT_CLIENT_ID 262047106337-aa6ulttav15v6tu16utfalra9es7v7fb.apps.googleusercontent.com
  # set -Ux GOOGLE_DEFAULT_CLIENT_SECRET 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
  set -Ux CHROME_FLAGS $CHROME_FLAGS --enable-features=VaapiVideoDecoder
  # pass
  set -Ux PASSWORD_STORE_DIR $XDG_DATA_HOME/password-store
  # tmux
  set -Ux TMUX_TMPDIR $XDG_RUNTIME_DIR
  # chat/email/web
  set -Ux WEECHAT_HOME $XDG_CONFIG_HOME/weechat
  set -Ux NOTMUCH_CONFIG $XDG_CONFIG_HOME/notmuch-config
  set -Ux MBSYNCRC $XDG_CONFIG_HOME/mbsync/mbsyncrc
  set -Ux WWW_HOME $XDG_CONFIG_HOME/w3m
  set -Ux WGETRC $XDG_CONFIG_HOME/wget/wgetrc
  # less
  set -Ux LESS -R
  set -Ux LESSOPEN | /usr/bin/highlight -O ansi %s 2>/dev/null
  set -Ux LESSHISTFILE -
  # gtk/gdk
  set -Ux GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
  # set -Ux GDK_BACKEND wayland
  set -Ux GTK_CSD 1
  set -Ux MOZ_ENABLE_WAYLAND 1
  set -Ux MOZ_USE_XINPUT2 1
  # qt
  set -Ux QT_QPA_PLATFORMTHEME qt5ct
  set -Ux QT_QPA_PLATFORM wayland-egl
  set -Ux QT_WAYLAND_DISABLE_WINDOWDECORATION 0
  # zsh
  set -Ux ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE fg=cyan,bold,underline
  set -Ux ZDOTDIR $XDG_CONFIG_HOME/zsh
  
  ## DEV ##
  # go
  set -Ux GOPATH $XDG_DATA_HOME/go
  set -Ux GO111MODULE on
  # rust
  set -Ux CARGO_HOME $XDG_DATA_HOME/cargo
  set -Ux RUSTUP_HOME $XDG_DATA_HOME/rustup
  set -Ux RUSTC_WRAPPER /usr/bin/sccache
  # ansible
  set -Ux ANSIBLE_CONFIG $XDG_CONFIG_HOME/ansible/ansible.cfg
  # node/npm/yarn
  set -Ux npm_config_userconfig $XDG_CONFIG_HOME/npmrc
  set -Ux npm_config_cache $XDG_CACHE_HOME/npm
  # Java
  set -Ux ANDROID_SDK_HOME $XDG_CONFIG_HOME/android
  set -Ux AWT_TOOLKIT MToolkit wmname LG3D
  set -Ux _JAVA_AWT_WM_NONREPARENTING 1
  # javascript
  
  ## PATH ##
  fish_add_path -Pm /usr/lib/ccache/bin $HOME/.local/bin $GOPATH/bin $CARGO_HOME/bin $RUSTUP_HOME/bin (yarn global bin) /usr/bin /usr/sbin /usr/local/bin
  
  ## STARTUP PROGRAMS ##
  # lf
  source ~/.config/lf/icons
  
  # gpg
  function _gpg 
    	set -Ux GPG_TTY (tty) 
    	gpg-connect-agent UPDATESTARTUPTTY /bye >> /home/me/.local/var/logs/sway.log
  end
  
  
  # ssh
  function _ssh 
    set -l agent (ssh-agent | rg -i SSH_AUTH_SOCK | sed -e s/SSH_AUTH_SOCK\=// | sed -e s/\;\ export\ SSH_AUTH_SOCK\;//g)
    set -l pid (ssh-agent | rg -i SSH_AGENT_PID | sed -e s/SSH_AGENT_PID\=// | sed -e s/\;\ export\ SSH_AGENT_PID\;//g)
    set -Ux SSH_AUTH_SOCK $agent
    set -Ux SSH_AGENT_PID $pid 
    ssh-add ~/.ssh/id_ed25519 >> /home/me/.local/var/logs/sway.log
    set -e agent
    set -e pid
  end
  
  
  # sway
  function _sway () 
    sway 2> /home/me/.local/var/logs/sway.log >> /home/me/.local/var/logs/sway.log
  end
  
  
  # qtile
  function _qtile () 
    qtile start -b wayland 2> /home/me/.local/var/logs/qtile.log >> /home/me/.local/var/logs/qtile.log
  end
  
  # japokwm
  function _river () 
    river 2> /home/me/.local/var/logs/river.log >> /home/me/.local/var/logs/river.log
  end

  if test (tty) = /dev/tty1
    _gpg &&
    _ssh &&
    _river
  end

end

# INTERACTIVE
if status is-interactive
  source (/home/me/.local/share/cargo/bin/starship init fish --print-full-init | psub)
end
