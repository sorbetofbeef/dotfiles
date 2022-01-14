function sSp --wraps='doas systemctl stop' --description 'alias sSp=doas systemctl stop'
  doas systemctl stop $argv; 
end
