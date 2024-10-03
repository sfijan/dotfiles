# Rebind vim to nvim
function vim
    nvim $argv
end

# make it so that you can exit just like vim
function q
    exit
end

# use yazi to change directory
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# use exa like ls
function ls
    exa $argv
end
function ll
    exa -l $argv
end
function la
    exa -la $argv
end
function tree
    exa --tree $argv
end

# use bat like cat
function cat 
    bat $argv
end


# Setting editor to nvim
export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"


# Prompt
# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
    set last_status $status

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal

    printf '%s ' (__fish_git_prompt)

    set_color normal
end


# Remove greeting
function fish_greeting
end

# Enable vi mode
fish_vi_key_bindings
