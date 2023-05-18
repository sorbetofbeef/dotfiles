function sENow --wraps='sudo systemctl enable --now' --description 'alias sENow=doas systemctl enable --now'
  sudo systemctl enable --now $argv; 
end
