function sUENow --wraps='systemctl --user enable --now' --description 'alias sUENow=systemctl --user enable --now'
  systemctl --user enable --now $argv; 
end
