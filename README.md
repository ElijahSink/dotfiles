# Instructions for system setup
```bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:ElijahSink/dotfiles.git $HOME/.dotfiles
config stash && config checkout
config config --local status.showUntrackedFiles no

sudo pacman -S --needed - < .pacman_package_list

# yay
mkdir ~/installs
cd ~/installs
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S autojump-rs
```
Credit to @gregdan3 for the bulk of the configs, especially vim's. Credit to
@eolatham for an example of how to set up this repository.
