abbr -a yr 'cal -y'
abbr -a c cargo
abbr -a e nvim
abbr -a lg lazygit
abbr -a o open
abbr -a g git
abbr -a ct 'cargo t'
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'

# always activate tmux on new window
# if status --is-interactive
# 	if ! set -q TMUX
# 		exec tmux
# 	end
# end


# function fish_greeting
# 	echo "MY GREETING"
# end
# disable greeting
set -U fish_greeting

# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes' 
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'no'
set __fish_git_prompt_char_upstream_equal ""
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_prefix brblack
set __fish_git_prompt_color_suffix brblack
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
		set_color blue
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
starship init fish | source
# init zoxide
zoxide init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniforge/base/bin" $PATH
    end
end
# <<< conda initialize <<<

