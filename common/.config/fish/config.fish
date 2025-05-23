if status is-interactive
	set fish_greeting
end

function fish_prompt
printf  '%s' \
	#(set_color normal) (set_color -o black) "" \
	#(set_color normal) (set_color -o white) (set_color -b black) "  " \
	#(set_color normal) (set_color -o black) (set_color -b red) "" \
	(set_color normal) (set_color -o black) (set_color -b blue) "  " \
        (set_color normal) (set_color -o blue) (set_color -b black) "" \
        (set_color normal) (set_color -o blue) (set_color -b black) " $USER " \
        (set_color normal) (set_color -o black) " " \n
        # (set_color normal) (set_color -o red) " " \n
	#(set_color normal) (set_color -o red) " "
end
function fish_right_prompt
    set_color brblack
    prompt_pwd
    set_color normal
end

alias l="eza --long --header --group --icons --color=always --group-directories-first"
alias ls="eza -A --icons"
alias t="eza --icons --tree"
alias c="clear"
alias v="nvim"
alias ..="cd .."
alias ds="sudo pacman -S"
alias dr="sudo pacman -Rns"
alias dsy="sudo pacman -Syu"
alias m="mkdir"
alias s="sudo"
alias n="ncmpcpp"
alias crystals="~/.config/eww/bin/crystals.sh"

set -x SUDO_PROMPT "pass pls: "

function notify_on_long_command --on-event fish_postexec
    set -l duration (math "$CMD_DURATION / 1000")
    if test $duration -gt 5
        notify-send "Done in $duration seconds" "Command: $argv"
    end
end

if test -z "$DISPLAY" -a (tty) = "/dev/tty1"
  exec sway
end
