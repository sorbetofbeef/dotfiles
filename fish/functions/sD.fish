function sD --wraps='sudo systemctl disable' --description 'alias sD=doas systemctl disable'
  sudo systemctl disable $argv; 
end
