function ls-tree --wraps='exa --tree --icons --group-directories-first' --description 'alias ls-tree=exa --tree --icons --group-directories-first'
  exa --tree --icons --group-directories-first $argv; 
end
