
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
source /Users/adampalmblad/workspace/mmw-tmft-tools/aliases.sh
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# == CLIO_ANDROID_SETUP ==

# Android PATHs
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin/:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
