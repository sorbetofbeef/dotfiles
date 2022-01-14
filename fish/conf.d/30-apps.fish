# chromium chrome API keys
# set -Ux GOOGLE_API_KEY AIzaSyDIIu9Bx5jwTDfkmRURZ95yC2FdmEcrQpo
# set -Ux GOOGLE_DEFAULT_CLIENT_ID 262047106337-aa6ulttav15v6tu16utfalra9es7v7fb.apps.googleusercontent.com
# set -Ux GOOGLE_DEFAULT_CLIENT_SECRET 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
set -Ux CHROME_FLAGS $CHROME_FLAGS --enable-features=VaapiVideoDecoder
# pass
set -Ux PASSWORD_STORE_DIR $XDG_DATA_HOME/password-store
# tmux
set -Ux TMUX_TMPDIR $XDG_RUNTIME_DIR/tmux
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
# gtk2
set -Ux GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
# zsh
set -Ux ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE fg=cyan,bold,underline
set -Ux ZDOTDIR $XDG_CONFIG_HOME/zsh
