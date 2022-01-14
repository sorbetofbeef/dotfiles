function sUMon --wraps='systemctl --user status' --description 'alias sUMon=systemctl --user status'
  systemctl --user status $argv; 
end
