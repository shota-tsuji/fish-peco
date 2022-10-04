alias repo="peco_select_ghq"
alias r="peco_select_ghq"
alias gck="peco-git-checkout"

# See details on https://fishshell.com/docs/current/cmds/bind.html
# Activate when insert mode along fish_vi_key_bindings.
bind -M insert \cr 'peco_select_history'
bind -M insert \co 'peco_select_recent_directory'
#bind \c[ 'peco_select_ghq'
