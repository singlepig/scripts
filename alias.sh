# alisa for system
## avoid system slepp
alias caf="caffeinate -t 3600"

## command line proxy use xx-net
alias xx="export http_proxy='http://localhost:8087'"
alias unxx="unset http_proxy"
alias xx="export https_proxy='http://localhost:8087'"
alias unxx="unset https_proxy"

## command line shortcut for sublime
alias subl="open -a Sublime\ Text"

## reload shell config
alias reload="source ~/.zshrc"

## edit zshrc
alias editzsh="subl ~/.zshrc"

## edit hosts
alias edithost="subl /private/etc/hosts"

## clear
alias c="clear"

## show hidden files in finder, restart Finder to take effect
alias showhide="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias unshowhide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
# alias for system

# alias for git
alias gcl="git config -l"
alias gdc="git diff --cached"
# end of git alias
