function sUE --wraps='systemctl --user enable' --description 'alias sUE=systemctl --user enable'
  systemctl --user enable $argv; 
end
