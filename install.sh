#!/bin/bash
apt update && \
apt -y install build-essential wget curl        \
    xinit xorg xserver-xorg x11-xserver-utils    \
    libx11-dev libxinerama-dev libxft-dev       \
    fonts-font-awesome fonts-firacode           \
    compton nitrogen                            \
    # favorite apps
    firefox     \
    kitty       \
    tmux        \
    neovim      \

# install suckless apps
./suckless.sh

# config startx
cp dotfiles/.xinitrc /home/$USER/.xinitrc