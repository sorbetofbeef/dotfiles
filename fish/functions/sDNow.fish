function sDNow --wraps='doas systemctl disable --now' --description 'alias sDNow=doas systemctl disable --now'
  doas systemctl disable --now $argv; 
end
