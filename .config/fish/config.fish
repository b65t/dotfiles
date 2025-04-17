if status is-interactive
	set fish_greeting
end

function fish_prompt
printf  '%s' \
   (set_color normal) (set_color -o red) "" \
   (set_color normal) (set_color -o black) (set_color -b red) " " \
   (set_color normal) (set_color -o red) (set_color -b black) "" \
   (set_color normal) (set_color -o white) (set_color -b black) " " (prompt_pwd) \
   (set_color normal) (set_color -o black) " " \n \
   (set_color normal) (set_color -o red) " " 
end

alias ls="eza --icons"
alias t="eza --icons --tree"
alias c="clear"
alias v="vim"
alias ..="cd .."
alias ds="sudo pacman -S"
alias dr="sudo pacman -Rns"
alias dsy="sudo pacman -Syu"
alias m="mkdir"
alias s="sudo"
alias n="ncmpcpp 2>/dev/null"
#alias fastfetch="~/.config/scripts/fastfetch.sh"

set -x SUDO_PROMPT "pass pls: "

if test -z "$DISPLAY" -a (tty) = "/dev/tty1"
  exec hyprland
end
