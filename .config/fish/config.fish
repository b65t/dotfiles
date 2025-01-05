if status is-interactive
	set fish_greeting
	pokemon-colorscripts -r
end

function fish_prompt
     set_color blue
        printf "-[%s]" (prompt_pwd)
        echo ' 
 '
end

alias ls="eza --icons"
alias tree="eza --icons --tree"
alias cl="clear"
alias nv="nvim"
alias fm="yazi"
