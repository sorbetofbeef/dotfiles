### LOGIN
if status is-login
  # Modify Path
  fish_add_path -Pm /usr/lib/ccache/bin $HOME/.local/bin $GOPATH/bin $CARGO_HOME/bin $RUSTUP_HOME/bin (yarn global bin) /usr/bin /usr/sbin /usr/local/bin
  source $HOME/.config/fish/conf.d/*
  
  # Start Wayland Compositor
  if test (tty) = /dev/tty1
    start_river
  end
end

### INTERACTIVE
if status is-interactive
  # Starship Prompt
  source (/home/me/.local/share/cargo/bin/starship init fish --print-full-init | psub)
end
