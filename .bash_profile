source .bash_prompt

function hide_hidden_files(){
    defaults write com.apple.finder AppleShowAllFiles -bool NO
    killall Finder
}
function show_hidden_files(){
    defaults write com.apple.finder AppleShowAllFiles -bool YES
    killall Finder
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
