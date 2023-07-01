function sLa --wraps='sudo systemctl list-unit-files' --description 'alias sLa=doas systemctl list-unit-files'
  sudo systemctl list-unit-files $argv; 
end
