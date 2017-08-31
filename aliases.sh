alias l='ls -lah'           # Long view, show hidden
alias la='ls -AF'           # Compact view, show hidden
alias ll='ls -lFh'          # Long view, no hidden
alias lt='ls -haltr'        # Human readble, reverse, details, sort by date

# Mac Helpers
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"

# Helpers
alias grep='grep --color=auto' # Always highlight grep search term
alias df='df -h'               # Disk free, in gigabytes, not bytes
alias du='du -h -c'            # Calculate total disk usage for a folder
alias spi='sudo pip install'   # Install pip stuff
alias clj='clj-env-dir'        # Clojure helper
alias clr='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd)."'
alias a='atom'
alias scpp='clang++ -std=c++11 -stdlib=libc++'

# Shortcuts
alias d="cd ~/Google \Drive/Dev"
alias dev="cd ~/dev"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dn="cd ~/Nexmo"
alias h="history"
alias j="jobs"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# GIT ALIASES
alias g=git
alias ga='git add'
alias gau='git add -u .'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gl='git pull'
alias gp='git push'
alias gs='git status'
alias gd='git diff | $GIT_EDITOR -'
alias gmv='git mv'
alias glog='git log'

alias py='python3'
