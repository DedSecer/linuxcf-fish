# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

set -x fish_cursor_insert line
set -x fish_cursor_default block
set -x fish_cursor_replace_one underscore
set -x fish_cursor_visual block

set -x PAGER "nvim -u ~/.config/nvim/scripts/less.vim"
set -x PATH $PATH ~/.local/bin
set -x EDITOR /usr/bin/nvim
set -x VISUAL /usr/bin/nvim
set -x BROWSER /usr/bin/qutebrowser

set  fish_greeting

alias pyenv-init "status --is-interactive; and source (pyenv init -|psub)"
alias ra "ranger"
alias sudo "sudo -s"
alias lg "lazygit"
alias plasma-start "startx /usr/bin/startplasma-x11"
alias vless "nvim -u ~/.config/nvim/scripts/less.vim"

alias sshagent_start "eval (ssh_agent_start)"
alias sshagent_stop "eval (ssh_agent_kill)"

set -x LESS_TERMCAP_md (printf "\e[01;31m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[01;32m")
