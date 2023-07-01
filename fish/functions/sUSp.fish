function sUSp --wraps='systemctl --user stop' --description 'alias sUSp=systemctl --user stop'
  systemctl --user stop $argv; 
end
