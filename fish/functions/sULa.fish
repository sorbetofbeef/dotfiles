function sULa --wraps='systemctl --user list-unit-files' --description 'alias sULa=systemctl --user list-unit-files'
  systemctl --user list-unit-files $argv; 
end
