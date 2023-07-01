function umount --wraps='sudo umount -v' --description 'alias umount=doas umount -v'
  sudo umount -v $argv; 
end
