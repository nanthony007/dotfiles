function ls-tree --wraps='eza --tree --icons --group-directories-first --git-ignore' --description 'alias ls-tree=eza --tree --icons --group-directories-first --git-ignore'
    eza --tree --icons --group-directories-first --git-ignore $argv
end
