function la --wraps='lsd -lAh --group-dirs first --tree --depth 2 --blocks name --no-symlink' --description 'alias la=lsd -lAh --group-dirs first --tree --depth 2 --blocks name --no-symlink'
  lsd -lAh --group-dirs first --tree --depth 2 --blocks name --no-symlink $argv; 
end
