function df --wraps='sudo df -h' --description 'alias df=doas df -h'
  sudo df -h $argv; 
end
