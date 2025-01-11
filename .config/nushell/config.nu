# config.nu
#
# Installed by:
# version = "0.101.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

$env.config.show_banner = false
$env.config.buffer_editor = 'helix'

alias hx = helix
alias fm = yazi
alias py = python
alias c = clear

alias x = eza --icons
alias xa = eza --icons --all
alias xl	= eza --long
alias xla = eza --long --all
alias xt	= eza --icons --tree
alias xta = eza --icons --tree --all

use ~/.cache/starship/init.nu

source ~/.zoxide.nu
