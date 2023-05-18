function pI --wraps='paru -Syu' --description 'alias pI=paru -Syu'
  sudo xbps-install -S $argv; 
end
