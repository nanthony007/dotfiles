set fish_greeting

# fish_vi_key_bindings
# bind \cs accept-autosuggestion

starship init fish | source
zoxide init fish | source

set -x BAT_THEME Dracula

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/public_mm/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


# string match -q "$TERM_PROGRAM" "vscode"
# and . (code --locate-shell-integration-path fish)

set -Ux EDITOR nvim

# Commands to run in interactive sessions can go here

abbr -a ghv 'gh repo view --web'
abbr -a c code .
abbr -a lg lazygit
abbr -a v nvim
abbr -a prp 'poetry run python'
abbr -a prv 'poetry run nvim'
abbr -a exa 'exa --icons --group-directories-first' 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nick/google-cloud-sdk/path.fish.inc' ]; . '/Users/nick/google-cloud-sdk/path.fish.inc'; end
