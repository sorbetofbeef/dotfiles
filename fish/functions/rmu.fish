function rmu --description 'alias rm=rip --graveyard=$HOME/.local/trash'
 command rip -u --graveyard="$HOME/.local/share/trash" $argv; 
end
