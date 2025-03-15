if status is-interactive
	set fish_greeting
end

function fish_prompt
printf  '%s' \
   (set_color normal) (set_color -o green) "" \
   (set_color normal) (set_color -o brblack) (set_color -b green) " " \
   (set_color normal) (set_color -o green) (set_color -b brblack) "" \
   (set_color normal) (set_color -o white) (set_color -b brblack) " " (prompt_pwd) \
   (set_color normal) (set_color -o brblack) "" \
   (set_color normal) (set_color -o green) " ❯❯ " 
end

alias ls="eza --icons"
alias t="eza --icons --tree"
alias c="clear"
alias n="nvim"
alias ..="cd .."
alias ds="sudo pacman -S"
alias dr="sudo pacman -Rns"
alias dsy="sudo pacman -Syu"
alias m="mkdir"
alias s="sudo"
#alias fastfetch="~/.config/scripts/fastfetch.sh"

set -x SUDO_PROMPT "pass pls: "
