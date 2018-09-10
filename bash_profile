
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -f "$HOME/.liquidprompt/liquidprompt" ]] && [[ $- = *i* ]] && source "$HOME/.liquidprompt/liquidprompt"
