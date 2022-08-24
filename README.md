# Instructions for system setup
```bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:ElijahSink/dotfiles.git $HOME/.dotfiles
config stash && config checkout
config config --local status.showUntrackedFiles no
```
Credit to @gregdan3 for the bulk of the configs, especially vim's. Credit to
@eolatham for an example of how to set up this repository.
