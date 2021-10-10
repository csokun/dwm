#!/bin/bash
set -e
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