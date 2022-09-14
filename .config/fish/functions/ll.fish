function ll --wraps='exa --icons --long --group-directories-first' --description 'alias ll=exa --icons --long --group-directories-first'
  exa --icons --long --group-directories-first $argv; 
end
