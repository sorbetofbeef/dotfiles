function umount --wraps='doas umount -v' --description 'alias umount=doas umount -v'
  doas umount -v $argv; 
end
