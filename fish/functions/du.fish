function du --wraps='doas du -sh' --description 'alias du=doas du -sh'
  doas du -sh $argv; 
end
