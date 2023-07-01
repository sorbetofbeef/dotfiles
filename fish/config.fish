### LOGIN
if status is-login
  # Modify Path
  
end

### INTERACTIVE
if status is-interactive
  source $HOME/.config/fish/conf.d/*
  set -gx PATH /usr/lib/ccache/bin "$HOME/.local/bin" "$GOPATH/bin" "$CARGO_HOME/bin" "$RUSTUP_HOME/bin" "$XDG_DATA_HOME/yarn/global/node_modules/.bin" /usr/local/bin /usr/local/sbin $PATH

  source $HOME/.config/fish/functions/theme_env.fish
  theme_env $DARK_THEME

  # Starship Prompt
  function starship_transient_rprompt_func
    starship module time
  end
  function starship_transient_prompt_func
    starship module character
  end
  starship init fish | source
  enable_transience
end
