# chromium chrome API keys
# set -Ux GOOGLE_API_KEY AIzaSyDIIu9Bx5jwTDfkmRURZ95yC2FdmEcrQpo
# set -Ux GOOGLE_DEFAULT_CLIENT_ID 262047106337-aa6ulttav15v6tu16utfalra9es7v7fb.apps.googleusercontent.com
# set -Ux GOOGLE_DEFAULT_CLIENT_SECRET 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
# set -Ux CHROME_FLAGS $CHROME_FLAGS --enable-features=VaapiVideoDecoder
# pass
set -gx PASSWORD_STORE_DIR $XDG_DATA_HOME/password-store
# tmux
set -gx TMUX_TMPDIR $XDG_RUNTIME_DIR/tmux
# chat/email/web
set -gx WEECHAT_HOME $XDG_CONFIG_HOME/weechat
set -gx NOTMUCH_CONFIG $XDG_CONFIG_HOME/notmuch-config
set -gx MBSYNCRC $XDG_CONFIG_HOME/mbsync/mbsyncrc
set -gx WWW_HOME $XDG_CONFIG_HOME/w3m
set -gx WGETRC $XDG_CONFIG_HOME/wget/wgetrc
# less
set -gx LESS -R
set -gx LESSOPEN | /usr/bin/highlight -O ansi %s 2>/dev/null
set -gx LESSHISTFILE -
# gtk2
set -gx GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
# zsh
set -gx ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE fg=cyan,bold,underline
set -gx ZDOTDIR $XDG_CONFIG_HOME/zsh
