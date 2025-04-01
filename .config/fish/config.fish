alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'  # special use of git for dotfiles repo
alias configs='config status'

alias gits='git status'
alias git-stat-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git status && printf \"\n\"" \;'
alias git-pull-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git pull && printf \"\n\"" \;'
alias git-clean-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && printf \"\n\" && pwd && git remote prune origin && git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d && printf \"\n\"" \;'

alias feh='feh --scale-down --auto-zoom'  # open images in feh scaled to window size

alias cp='cp -i'  # confirm before overwriting something
alias df='df -h'  # human-readable sizes
alias du='du -h'  # ditto
alias free='free -m'  # show sizes in MB
alias rm='rm -iv'  # confirm before deletion
alias c=clear  # shortcut to clear screen

export PATH="$PATH:/home/ejsink/.local/bin"

# X server
export DISPLAY=(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ejsink/installs/google-cloud-sdk/path.fish.inc' ]; . '/home/ejsink/installs/google-cloud-sdk/path.fish.inc'; end

# pdm
if test -n "$PYTHONPATH"
    set -x PYTHONPATH '/home/ejsink/.local/pipx/venvs/pdm/lib/python3.9/site-packages/pdm/pep582' $PYTHONPATH
else
    set -x PYTHONPATH '/home/ejsink/.local/pipx/venvs/pdm/lib/python3.9/site-packages/pdm/pep582'
end

zoxide init fish | source

# pnpm
set -gx PNPM_HOME "/home/ejsink/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
