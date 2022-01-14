function sSt --wraps='doas systemctl start' --description 'alias sSt=doas systemctl start'
  doas systemctl start $argv; 
end
