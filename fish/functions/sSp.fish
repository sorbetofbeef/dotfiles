function sSp --wraps='sudo systemctl stop' --description 'alias sSp=doas systemctl stop'
  sudo systemctl stop $argv; 
end
