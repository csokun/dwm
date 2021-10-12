#!/bin/bash
set -e
suckless=(
    "dwm-6.2"
    "dmenu-5.0"
    "st-0.8.2"
    "dwmblocks"
)
for app in "${suckless[@]}"
do
    pkg=./core/${app}
    pushd $pkg
    if test -f "config.def.h"; then
        rm config.h 2> /dev/null
    fi
    make clean install
    popd
done