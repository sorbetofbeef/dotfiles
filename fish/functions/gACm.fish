function gACm --wraps='git add . && git commit -m' --description 'alias gACm=git add . && git commit -m'
  git add . && git commit -m $argv; 
end
