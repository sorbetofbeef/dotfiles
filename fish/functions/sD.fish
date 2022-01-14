function sD --wraps='doas systemctl disable' --description 'alias sD=doas systemctl disable'
  doas systemctl disable $argv; 
end
