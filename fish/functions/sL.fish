function sL --wraps='sudo systemctl list-units' --description 'alias sL=doas systemctl list-units'
  sudo systemctl list-units $argv; 
end
