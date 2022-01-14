function gpCls --wraps='gh pr close' --description 'alias gpCls=gh pr close'
  gh pr close $argv; 
end
