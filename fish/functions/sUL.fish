function sUL --wraps='systemctl --user list-units' --description 'alias sUL=systemctl --user list-units'
  systemctl --user list-units $argv; 
end
