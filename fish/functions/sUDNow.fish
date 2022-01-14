function sUDNow --wraps='systemctl --user disable --now' --description 'alias sUDNow=systemctl --user disable --now'
  systemctl --user disable --now $argv; 
end
