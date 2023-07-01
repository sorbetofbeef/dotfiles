function bax --wraps='/usr/bin/git --work-tree=/home/me --git-dir=/home/me/.config/dotfiles' --description 'alias bax=/usr/bin/git --work-tree=/home/me --git-dir=/home/me/.config/dotfiles'
  /usr/bin/git --work-tree=/home/me --git-dir=/home/me/.config/dotfiles $argv; 
end
