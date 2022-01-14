function gpDif --wraps='gh pr diff' --description 'alias gpDif=gh pr diff'
  gh pr diff $argv; 
end
