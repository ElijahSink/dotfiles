function savepkgs --wraps='pacman -Qqne > ~/.pacman_package_list; pacman -Qm > ~/.aur_package_list' --description 'alias savepkgs=pacman -Qqne > ~/.pacman_package_list; pacman -Qm > ~/.aur_package_list'
  pacman -Qqne > ~/.pacman_package_list; pacman -Qm > ~/.aur_package_list $argv; 
end
