function sMon --wraps='doas systemctl status' --description 'alias sMon=doas systemctl status'
  doas systemctl status $argv; 
end
