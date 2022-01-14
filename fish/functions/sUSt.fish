function sUSt --wraps='systemctl --user start' --description 'alias sUSt=systemctl --user start'
  systemctl --user start $argv; 
end
