function ls --wraps='lsd --group-dirs first --no-symlink' --description 'alias ls=lsd --group-dirs first --no-symlink'
  lsd --group-dirs first --no-symlink $argv; 
end
