set source ~/.config/fish/config.fish

set -gx fish_color_cwd brcyan
set -gx __fish_git_prompt_color_dirtystate green

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
    /usr/bin/vim $argv
end

# OPAM configuration
source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
