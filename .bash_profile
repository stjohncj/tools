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

export S3DEV=s3://dealerinspire-prizm-assets-dev/
export S3DEMO=s3://dealerinspire-prizm-assets-demo/
export S3PROD=s3://dealerinspire-prizm-assets-prod/

export NVM_DIR="$HOME/.nvm"

export PATH="$PATH:~/bin:$HOME/Library/Python/2.7/bin"

eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

