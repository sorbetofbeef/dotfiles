function df --wraps='doas df -h' --description 'alias df=doas df -h'
  doas df -h $argv; 
end
