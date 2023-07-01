function sDNow --wraps='sudo systemctl disable --now' --description 'alias sDNow=doas systemctl disable --now'
  sudo systemctl disable --now $argv; 
end
