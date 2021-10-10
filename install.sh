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
KITTY_CFG_PATH=/home/$USER/.config/kitty
mkdir -p $KITTY_CFG_PATH && cp -R dotfiles/kitty/* $KITTY_CFG_PATH

cp dotfiles/.xinitrc /home/$USER/.xinitrc
# cp dwm.desktop /usr/share/xsessions