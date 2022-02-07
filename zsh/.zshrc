HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4096
SAVEHIST=4096
setopt autocd extendedglob notify
unsetopt beep
bindkey -v

## COMPLETION ##
# zmodload zsh/complist
# autoload -Uz compinit && compinit

# zstyle ':completion:*' squeeze-slashes true
# zstyle ':completion:*' special-dirs ..
# zstyle ':completion:*' accept-exact-dirs true
# zstyle ':completion:*' use-ip true
# zstyle ':completion::*' insert-tab true
# zstyle ':completion::complete:*' use-cache on
# zstyle ':completion::complete:*' rehash true

# zstyle ':completion:*:functions'           ignored-patterns '_*'
# zstyle ':completion:*:*:*:*:processes*'    force-list always
# zstyle ':completion:*:*:kill:*:processes'  insert-ids single
# zstyle ':completion:*:*:kill:*:processes'  sort false
# zstyle ':completion:*:*:kill:*:processes'  command 'ps -u "$USER"'
# zstyle ':completion:*:processes-names'     command "ps -eo cmd= | sed 's:\([^ ]*\).*:\1:;s:\(/[^ ]*/\)::;/^\[/d'"
# zstyle ':completion:*:evince::' \
# file-patterns '*.(#i)(dvi|djvu|tiff|pdf|ps|xps)(|.bz2|.gz|.xz|.z) *(-/)' '*'
# compdef pkill=killall
# compdef ping6=ping
# compdef _gnu_generic curl emacs emacsclient file head mv paste
# compdef _gnu_generic tail touch scrot shred watch wc zsh
# 
# Don't complete the same twice for kill/diff.
# zstyle ':completion:*:(kill|diff):*'       ignore-line yes

# Don't complete from PATH for sh and rc.
# zstyle ':completion:*:(sh|rc):*' tag-order '! commands builtins' -

# Don't complete backup files as commands.
# zstyle ':completion:*:complete:-command-::*' ignored-patterns '*\~'

# Don't complete .pdf for less.
# zstyle ':completion:*:less:*' file-patterns '*~*.pdf'

# Lax completion for cd
# zstyle ':completion:*:cd:*' tag-order '*' '*:-case'
# zstyle ':completion:*-case' matcher 'm:{a-zA-Z0-9}={A-Za-z0-9}' 'l:|=* r:|=*'


## OLD COMPLETION SETTINGS ##

# The following lines were added by compinstall

zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/me/.zshrc'
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
zmodload zsh/complist

fpath+=($ZDOTDIR/shell_funcs $ZDOTDIR/functions)

for funcs in $ZDOTDIR/shell_funcs/* ; do 
  autoload -Uz "$funcs"
done
autoload -Uz compinit
compinit -i

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
--color=fg:#4b505b,bg:#fafafa,hl:#5079be 
--color=fg+:#4b505b,bg+:#fafafa,hl+:#3a8b84 
--color=info:#88909f,prompt:#d05858,pointer:#b05ccc 
--color=marker:#608e32,spinner:#d05858,header:#3a8b84'

# fnm
export PATH=/home/me/.config/fnm:$PATH
eval "`fnm env`"
# source $ZDOTDIR/functions
source $ZDOTDIR/alias-common

# source /usr/share/zsh-syntax-highlighting/highlighters/dracula/dracula-highlitgher.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

for funcs in $ZDOTDIR/functions/* ; do 
  source $funcs
done

source <("${CARGO_HOME}/bin/starship" init zsh --print-full-init)

# pfetch

