function gpRe --wraps='gh pr reopen' --description 'alias gpRe=gh pr reopen'
  gh pr reopen $argv; 
end
