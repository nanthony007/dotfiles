function ll --wraps='exa -a --icons --long --group-directories-first' --description 'alias ll=exa -a --icons --long --group-directories-first'
    exa -a --icons --long --group-directories-first $argv
end
