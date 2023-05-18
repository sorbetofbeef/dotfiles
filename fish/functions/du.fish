function du --wraps='sudo du -sh' --description 'alias du=doas du -sh'
  sudo du -sh $argv; 
end
