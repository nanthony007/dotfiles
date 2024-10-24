function fzf-bat --wraps="fzf --preview 'bat'" --description 'fzf w/ bat'
    fzf --preview="bat --color=always --style=numbers --line-range=:500 {}"
end
