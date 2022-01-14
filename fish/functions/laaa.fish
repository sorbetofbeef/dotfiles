function laaa --wraps='lsd -lAh --group-dirs first --tree --depth 4 --blocks name --no-symlink' --description 'alias laaa=lsd -lAh --group-dirs first --tree --depth 4 --blocks name --no-symlink'
  lsd -lAh --group-dirs first --tree --depth 4 --blocks name --no-symlink $argv; 
end
