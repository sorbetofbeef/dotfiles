function sE --wraps='sudo systemctl enable' --description 'alias sE=doas systemctl enable'
  sudo systemctl enable $argv; 
end
