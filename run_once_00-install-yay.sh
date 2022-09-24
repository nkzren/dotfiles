#!/bin/bash

set -e

sudo pacman -S --needed git go base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay

set +e
