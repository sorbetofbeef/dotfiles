function mount --wraps='sudo mount -v' --description 'alias mount=doas mount -v'
  sudo mount -v $argv; 
end
