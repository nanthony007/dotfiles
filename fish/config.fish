abbr -a yr 'cal -y'
abbr -a c cargo
abbr -a ct 'cargo t'
abbr -a e nvim
abbr -a lg lazygit
abbr -a o open
abbr -a g git
abbr -a gs 'git status'
abbr -a gho 'gh repo view --web'
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'

# always activate tmux on new window
#if status --is-interactive
# if ! set -q TMUX
#exec tmux
#end
#end


# function fish_greeting
# 	echo "MY GREETING"
# end
# disable greeting
set fish_config theme "Catppuccin Mocha"
set BAT_THEME base16

set -U fish_greeting

set -g fish_prompt_pwd_dir_length 3

# set -g fish_vi_key_bindings

function fish_prompt
    # set_color brblack
    set_color yellow
    echo -n "["(date "+%H:%M")"]"
    set_color red
    # echo -n (hostname | cut -d "." -f 1 | cut -d "-" -f 1)
    if [ $PWD != $HOME ]
        set_color brblack
        echo -n ':'
        set_color cyan
        echo -n (basename $PWD)
        set_color brblack
        echo -n ':'
    end
    set_color brblack
    # clean git status
    echo -n (string trim -lr (fish_git_prompt) | sed -e "s/(//" -e "s/)//" -e "s/ //")
    set_color red
    echo -n '| '
    set_color normal
end

# init starship prompt (pure)
# starship init fish | source
zoxide init fish | source
fzf --fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /opt/homebrew/Caskroom/miniforge/base/bin $PATH
    end
end
# <<< conda initialize <<<

# pnpm
set -gx PNPM_HOME /Users/nick/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
