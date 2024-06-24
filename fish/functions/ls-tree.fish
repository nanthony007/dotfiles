function ls-tree --wraps='exa --tree --icons --group-directories-first --git-ignore' --description 'alias ls-tree=exa --tree --icons --group-directories-first --git-ignore'
    exa --tree --icons --group-directories-first --git-ignore $argv
end
