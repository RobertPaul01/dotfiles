set source ~/.config/fish/config.fish

# Functions
function edit_source
	vi $source 
end

function gitconfig
	vi ~/.gitconfig
end

function reload_source
	source $source 
end

function fish_prompt
        printf '%s%s%s> ' (set_color purple) (prompt_pwd) (set_color normal)
end

function get_perm
	stat -f "%OLp" $args[1]
end

function grep_stderr --description 'Search stderr'
	if count $argv | grep 2
		eval $argv[1] 2>&1 | grep $argv[2]
	else
		echo 'Error: provide args for [executable, query]'
	end
end

function kill_port
	lsof -ti :$argv | xargs kill -9
end

# Alias functions
function lls
	ls -lhaF
end

function vi
	vim $argv
end

