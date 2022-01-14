function chown --wraps='doas chown -v' --description 'alias chown=doas chown -v'
  doas chown -v $argv; 
end
