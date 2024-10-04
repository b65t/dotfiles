if status is-interactive
	set fish_greeting
end

function fish_prompt
    set_color blue
    printf " %s" (prompt_pwd)
    echo ' > '
    end

fish_add_path /home/islam/.spicetify
