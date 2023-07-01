function gpSts --wraps='gh pr status' --description 'alias gpSts=gh pr status'
  gh pr status $argv; 
end
