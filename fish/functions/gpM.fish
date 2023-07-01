function gpM --wraps='gh pr merge' --description 'alias gpM=gh pr merge'
  gh pr merge $argv; 
end
