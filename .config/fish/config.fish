set source ~/.config/fish/config.fish

# Functions
function edit_source
	vi $source 
end

function reload_source
	source $source 
end

function fish_prompt
        printf '%s%s%s> ' (set_color purple) (prompt_pwd) (set_color normal)
end

# Shell alias
alias lls="ls -lhaF"
alias vi="vim"

