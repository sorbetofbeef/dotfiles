function gpView --wraps='gh pr view' --description 'alias gpView=gh pr view'
  gh pr view $argv; 
end
