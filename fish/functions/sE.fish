function sE --wraps='doas systemctl enable' --description 'alias sE=doas systemctl enable'
  doas systemctl enable $argv; 
end
