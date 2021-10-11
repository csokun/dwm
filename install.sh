#!/bin/bash
set -e
apt update && \
apt -y install build-essential wget curl        \
    xinit xorg xserver-xorg x11-xserver-utils   \
    libx11-dev libxinerama-dev libxft-dev       \
    fonts-font-awesome fonts-firacode           \
    compton nitrogen lightdm lxappearance       \
    # favorite apps
    firefox-esr     \
    kitty           \
    tmux            \
    neovim          \
    meld            \
    gitg

# helper scripts
chmod a+x ./usr/bin/* && cp -R ./usr/bin/* /usr/bin/

# lightdm
systemctl enable lightdm
cp -R ./etc/lightdm/* /etc/lightdm/
cp -R usr/share/xsessions/* /usr/share/xsession/

# install suckless apps
./suckless.sh

# tmux-resurrect
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# kitty config
KITTY_CFG_PATH=/home/$USER/.config/kitty
mkdir -p $KITTY_CFG_PATH && cp -R dotfiles/kitty/* $KITTY_CFG_PATH

# tmux config
cp dotfile/.tmux.conf ~/.tmux.conf