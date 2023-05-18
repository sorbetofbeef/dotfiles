function chmod --wraps='chmod -v' --description 'alias chmod=sudo chmod -v'
   sudo  chmod -v $argv; 
end
