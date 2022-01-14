function sL --wraps='doas systemctl list-units' --description 'alias sL=doas systemctl list-units'
  doas systemctl list-units $argv; 
end
