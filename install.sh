#!/bin/bash
su -
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
suckless=(
    "dwm-6.2"
    "dmenu-5.0"
    "st-0.8.2"
    "slstatus"
)
for app in "${suckless[@]}"
do
    pushd ./core/${app}
    make clean install
    popd
done
exit

# config startx
cp dotfiles/.xinitrc /home/$USER/.xinitrc