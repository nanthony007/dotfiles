if status is-interactive
    # Commands to run in interactive sessions can go here
end


set fish_greeting

starship init fish | source

pyenv init - | source

thefuck --alias | source 

zoxide init fish | source

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/public_mm/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
