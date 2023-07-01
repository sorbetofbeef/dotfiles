function gpLs --wraps='gh pr list' --description 'alias gpLs=gh pr list'
  gh pr list $argv; 
end
