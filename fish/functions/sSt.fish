function sSt --wraps='sudo systemctl start' --description 'alias sSt=doas systemctl start'
  sudo systemctl start $argv; 
end
