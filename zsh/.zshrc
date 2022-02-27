HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4096
SAVEHIST=4096
setopt autocd extendedglob notify
setopt COMBINING_CHARS
unsetopt beep
bindkey -v

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

# Shell Functions
fpath+=($ZDOTDIR/shell_funcs $ZDOTDIR/functions)

for funcs in $ZDOTDIR/shell_funcs/* ; do 
  autoload -Uz "$funcs"
done

# Local Aliases
source $ZDOTDIR/alias-common

# Completion Loading
autoload -Uz compinit
compinit -i

# Sheldon - Zsh Plugin Manager
eval "$(sheldon source)"

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Starship
source <("${CARGO_HOME}/bin/starship" init zsh --print-full-init)

# Terminal Heading
heading
