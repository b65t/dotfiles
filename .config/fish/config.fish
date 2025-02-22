if status is-interactive
	set fish_greeting
end

function fish_prompt
printf  '%s' \
   (set_color normal) (set_color -b green) " " \
   (set_color normal) (set_color -o black) (set_color -b green) (prompt_pwd) \
   (set_color normal) (set_color -o black) (set_color -b green) " ❯❯ " \
   (set_color normal) " " 
end

alias ls="eza --icons"
alias t="eza --icons --tree"
alias c="clear"
alias n="nvim"
alias ..="cd .."
alias ds="sudo dnf install"
alias dr="sudo dnf remove"
alias dsy="sudo dnf update"
alias m="mkdir"
alias s="sudo"
#alias fastfetch="~/.config/scripts/fastfetch.sh"

set -x SUDO_PROMPT "pass pls: "
