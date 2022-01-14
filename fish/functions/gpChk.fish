function gpChk --wraps='gh pr checkout' --description 'alias gpChk=gh pr checkout'
  gh pr checkout $argv; 
end
