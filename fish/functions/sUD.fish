function sUD --wraps='systemctl --user disable' --description 'alias sUD=systemctl --user disable'
  systemctl --user disable $argv; 
end
