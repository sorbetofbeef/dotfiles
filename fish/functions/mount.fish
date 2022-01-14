function mount --wraps='doas mount -v' --description 'alias mount=doas mount -v'
  doas mount -v $argv; 
end
