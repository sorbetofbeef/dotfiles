function poweroff --description 'alias poweroff=doas poweroff'
  doas poweroff $argv; 
end
