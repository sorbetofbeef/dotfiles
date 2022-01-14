function l --wraps=lsd\ -lAh\ --group-dirs\ first\ --date\ \'+\%m.\%d\ \%H:\%M\'\ --blocks\ permission,user,date,name --description alias\ l=lsd\ -lAh\ --group-dirs\ first\ --date\ \'+\%m.\%d\ \%H:\%M\'\ --blocks\ permission,user,date,name
  lsd -lAh --group-dirs first --date '+%m.%d %H:%M' --blocks permission,user,date,name $argv; 
end
