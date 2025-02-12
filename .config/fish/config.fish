if status is-interactive
	set fish_greeting
end

function fish_prompt
printf '%s' (set_color normal) (set_color -b black) " " (set_color normal) (set_color -o green) (set_color -b black) (prompt_pwd) (set_color normal) (set_color normal) (set_color -o green) (set_color -b black) " ❯❯ " (set_color normal) " "
end

alias ls="eza --icons"
alias t="eza --icons --tree"
alias c="clear"
alias n="nvim"
alias ..="cd .."
alias ds="doas pacman -S"
alias dr="doas pacman -Rns"
alias dsy="doas pacman -Syu"
