#!/bin/bash
set -e
apt update && \
apt -y install build-essential wget curl        \
    xinit xorg xserver-xorg x11-xserver-utils    \
    libx11-dev libxinerama-dev libxft-dev       \
    fonts-font-awesome fonts-firacode           \
    compton nitrogen                            \
    # favorite apps
    firefox-esr     \
    kitty           \
    tmux            \
    neovim          \
    meld            \
    gitg

# install suckless apps
./suckless.sh

# tmux-resurrect
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# config startx
mkdir -p /home/$USER/.config/kitty && \
cp -R dotfiles/kitty /home/$USER/.config/kitty

cp dotfiles/.xinitrc /home/$USER/.xinitrc
# cp dwm.desktop /usr/share/xsessions