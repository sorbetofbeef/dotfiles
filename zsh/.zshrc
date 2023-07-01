HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4096
SAVEHIST=4096
setopt autocd extendedglob notify
setopt COMBINING_CHARS
unsetopt beep
bindkey -v


zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh
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

# if type brew &>/dev/null; then
# 	fpath=($(brew --prefix)/share/zsh-completions $fpath)
# fi
fpath=($ZDOTDIR/functions $ZDOTDIR/site_functions $fpath)
autoload -Uz promptinit; autoload -Uz compinit

for func in $ZDOTDIR/functions/*
do
  autoload -Uz "$func"
done

promptinit; compinit -i; aliasinit

# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/local/share/zsh/zsh-autopair/autopair.zsh

# if [[ -n $KITTY_INSTALLATION_DIR ]]; then
#   export KITTY_SHELL_INTEGRATION="enabled"
#   autoload -Uz -- "$KITTY_INSTALLATION_DIR"/shell-integration/zsh/kitty-integration
#   kitty-integration
#   unfunction kitty-integration
# fi

# bindkey -s '^o' 'lfcd\n'  # zsh

# source /opt/homebrew/Cellar/nvm/0.39.1_1/libexec/nvm.sh
# source /Users/me/.config/broot/launcher/bash/br

# source /Users/me/.config/zsh/themes/poimandres/None.sh

source /usr/share/fzf/key-bindings.zsh
source <(starship init --print-full-init zsh)

# pfetch
# heading
# /Users/me/.local/bin/dark_mode 

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/me/.local/src/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/me/.local/src/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/me/.local/src/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/me/.local/src/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

