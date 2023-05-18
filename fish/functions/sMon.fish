function sMon --wraps='sudo systemctl status' --description 'alias sMon=doas systemctl status'
  sudo systemctl status $argv; 
end
