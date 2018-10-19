set source ~/.config/fish/config.fish

set -gx fish_color_cwd brcyan
set -gx __fish_git_prompt_color_dirtystate green
set -gx DEBUG 1

set -gx PATH /usr/local/mysql/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH

set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/tools $PATH

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

function diff-ignore
    git diff -- . ":(exclude)$argv"
end

function clean_js_cache
    npm cache clean --force
    yarn cache clean
    rm -Rfd $TMPDIR/react*
    rm -Rfd $TMPDIR/haste*
    rm -Rfd $TMPDIR/jest*
end

function clean_dd
    rm -rfd ~/Library/Developer/Xcode/DerivedData/*
end

function clean_repos
    git branch | grep -v $argv | xargs git push -d origin
    git branch | grep -v $argv | xargs git branch -D
end

function exp_rep_ignore
    vi $PWD/.git/info/exclude
end

function start_browser
    qutebrowser 2>/dev/null &
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
