source ~/.bash_cliprompt

alias be='bundle exec'

function hide_hidden_files(){
    defaults write com.apple.finder AppleShowAllFiles -bool NO
    killall Finder
}
function show_hidden_files(){
    defaults write com.apple.finder AppleShowAllFiles -bool YES
    killall Finder
}

eval "$(rbenv init - zsh)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

