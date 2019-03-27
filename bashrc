if [ -f "$HOME/.bash/config" ]; then
  source "$HOME/.bash/config"
fi
if [ -f "$HOME/.localrc" ]; then
  source ~/.localrc
fi

# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ -f ~/.liquidprompt/liquidprompt ]; then
  [[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export YVM_DIR=/Users/adampalmblad/.yvm
[ -r $YVM_DIR/yvm.sh ] && source $YVM_DIR/yvm.sh
