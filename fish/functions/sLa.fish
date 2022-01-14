function sLa --wraps='doas systemctl list-unit-files' --description 'alias sLa=doas systemctl list-unit-files'
  doas systemctl list-unit-files $argv; 
end
