# Arch-Dotfiles
## Needed programs
tmux
vim
zsh
xmonad
xmobar
tmuxp
nm-applet
insync
pasystray
gpmdp
pavucontrol
google chrome
rofi
rxvt-patched-unicode
scrot
-- For scrot, make sure the folder ~/pictures/screenshots exists
compton
light-locker

## Terminal
using urxvt as the terminal (install rxvt-unicode-patched from the aur)

## Setting up vim
Using plug, install with:
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Once installed, and using the .vimrc install the plugins with ":PlugInstall"

## Xmonad
Install xmonad and xmobar

## tmuxp
Install tmuxp to help with managing sessions in tmux

## Oh My ZSH
using oh my zsh, install from the git rather than aur
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
