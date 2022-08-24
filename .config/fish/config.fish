alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'  # special use of git for dotfiles repo
alias configs='config status'

alias gits='git status'
alias git-stat-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git status && printf \"\n\"" \;'
alias git-pull-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git pull && printf \"\n\"" \;'
alias git-clean-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git remote prune origin && git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d && printf \"\n\"" \;'

alias cp='cp -i'  # confirm before overwriting something
alias df='df -h'  # human-readable sizes
alias du='du -h'  # ditto
alias free='free -m'  # show sizes in MB
alias rm='rm -iv'  # confirm before deletion
alias c=clear  # shortcut to clear screen

export PATH="$PATH:/home/ejsink/.local/bin"

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

export NVM_DIR="$HOME/.nvm"

