function sENow --wraps='doas systemctl enable --now' --description 'alias sENow=doas systemctl enable --now'
  doas systemctl enable --now $argv; 
end
