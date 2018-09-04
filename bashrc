source ~/.bash/config
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ -f ~/.liquidprompt/liquidprompt ]; then
  [[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
