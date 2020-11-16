alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'  # special use of git for dotfiles repo

alias gits='git status'
alias git-stat-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git status && printf \"\n\"" \;'
alias git-pull-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git pull && printf \"\n\"" \;'
alias git-clean-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git remote prune origin && git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d && printf \"\n\"" \;'

alias feh='feh --scale-down --auto-zoom'  # open images in feh scaled to window size

alias j='autojump'

alias cp='cp -i'  # confirm before overwriting something
alias df='df -h'  # human-readable sizes
alias du='du -h'  # ditto
alias free='free -m'  # show sizes in MB
alias rm='rm -iv'  # confirm before deletion
alias c=clear  # shortcut to clear screen

#alias code='code-insiders'

export PATH="$PATH:/home/ejsink/.local/bin"
# export PATH="$PATH:/usr/local/anaconda/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /usr/local/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

if test -e /etc/profile.d/autojump.sh
    bass source /etc/profile.d/autojump.sh
end
