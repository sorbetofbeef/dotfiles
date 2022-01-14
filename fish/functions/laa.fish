function laa --wraps='lsd -lAh --group-dirs first --tree --depth 3 --blocks name --no-symlink' --description 'alias laa=lsd -lAh --group-dirs first --tree --depth 3 --blocks name --no-symlink'
  lsd -lAh --group-dirs first --tree --depth 3 --blocks name --no-symlink $argv; 
end
