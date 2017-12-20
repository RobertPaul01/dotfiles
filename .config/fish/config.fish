set source ~/.config/fish/config.fish
set -gx PATH ~/Library/Android/sdk/platform-tools $PATH
set -gx PATH ~/Library/Haskell/bin $PATH
set -gx PATH /opt/local/bin $PATH

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

function clean_yarn_cache
	npm cache clean --force
	yarn cache clean
	rm -rfd $TMPDIR/*
end

function clean_dd
	rm -rfd ~/Library/Developer/Xcode/DerivedData/*
end

# Alias functions
function lls
	ls -lhaF
end

function vi
	/usr/local/bin/vim $argv
end

