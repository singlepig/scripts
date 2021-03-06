# alisa for system
## avoid system slepp
alias caf="caffeinate -t 3600"

## command line proxy
alias use_proxy="export http_proxy=http://127.0.0.1:8123 && export https_proxy=http://127.0.0.1:8123"
alias unuse_proxy="unset use_proxy"

## command line shortcut for sublime
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

## alias for commands
alias p3="python3"
alias p2="python2"
# used in condition like ls -1 | wc -l
alias l1="ls -1"

## reload shell config
alias reload="source ~/.zshrc"

## edit zshrc
alias editalias="subl ~/tools/scripts"

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
alias gd="git diff"
alias gst="git status"
alias dsf="git diff --color | diff-so-fancy"
alias gb="git branch"
alias gba="git branch -a"
alias gco="git checkout"
# end of git alias

# alias for java
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`
# default use JDK 7
export JAVA_HOME=$JAVA_8_HOME
# alias to change jdk versions
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
# end of java alias# functions
function scpto ()
{
    # TODO add support for argument target_ip
    if [[ 0 -eq $# ]]; then
        echo "usage: scpto file1 [file2 ...] -ip [user@target-ip:path]"
        return 1
    else
        # TODO add support for multi files
        TargetIP="singlepig@192.168.0.129:Downloads"
        File=$1
    fi
    scp $File $TargetIP
}
