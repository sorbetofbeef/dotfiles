function chmod --wraps='doas chmod -v' --description 'alias chmod=doas chmod -v'
  doas chmod -v $argv; 
end
