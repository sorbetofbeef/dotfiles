### LOGIN
if status is-login
  # Modify Path
  source $HOME/.config/fish/conf.d/*
  set -gx PATH /usr/lib/ccache/bin "$HOME/.local/bin" "$GOPATH/bin" "$CARGO_HOME/bin" "$RUSTUP_HOME/bin" "$XDG_DATA_HOME/yarn/global/node_modules/.bin" /usr/local/bin /usr/local/sbin $PATH
  
  # Start Wayland Compositor
  if test (tty) = /dev/tty1
    river
  end
end

### INTERACTIVE
if status is-interactive
  # tide Prompt
  fish_prompt -gx /home/me/.config/fish/functions/tide/configure/configs/my_prompt.fish
end
