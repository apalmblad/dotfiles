if [ -f "$HOME/.bash/config" ]; then
  source "$HOME/.bash/config"
fi
if [ -f "$HOME/.localrc" ]; then
  source ~/.localrc
fi


export PATH="/usr/local/opt/grep/libexec/gnubin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export YVM_DIR=/Users/adampalmblad/.yvm
[ -r $YVM_DIR/yvm.sh ] && source $YVM_DIR/yvm.sh
source /Users/adampalmblad/.clio_profile

eval "$(dev _hook)"
