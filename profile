[[ -s "$HOME/.localrc" ]] && source "$HOME/.localrc"
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
