function fish_prompt --description 'Write out the prompt'
	  set -l last_status $status

    if not set -q __fish_git_prompt_color_branch
        set -g __fish_git_prompt_color_branch magenta --bold
    end

    #if not set -q __fish_git_prompt_show_informative_status
    #set -g __fish_git_prompt_show_informative_status 1
    #end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_color_blue
        set -g __fish_color_blue (set_color -o blue)
    end

    #Set the color for the status depending on the value
    set __fish_color_status (set_color -o green)
    if test $last_status -gt 0
        set __fish_color_status (set_color -o red)
    end

    if test (__fish_vcs_prompt)
      printf '[%s] %s%s%s%s%s (%s)%s: ' (date "+%H:%M:%S") "$__fish_color_blue" (prompt_pwd) "$__fish_prompt_normal" (__fish_vcs_prompt) "$__fish_color_status" "$last_status" "$__fish_prompt_normal"
    else
      printf '[%s] %s%s%s (%s)%s: ' (date "+%H:%M:%S") "$__fish_color_blue" (prompt_pwd) "$__fish_color_status" "$last_status" "$__fish_prompt_normal"
    end
end
