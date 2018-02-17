#!/bin/bash

echo "Installing XFCE4 Desktop Environment"
sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies xfce4-pulseaudio-plugin xscreensaver
echo

echo "Installing Greybird theme and icons"
packer -S --noconfirm --noedit -S xfce-theme-greybird elementary-xfce-icons-git
echo

echo "Copying Configurations"
echo >> ~/.xinitrc exec startxfce4
cp ../3.Customizations/.gtkrc-2.0 ~/
cp ../3.Customizations/.bash_profile ~/
cp ../3.Customizations/.bashrc ~/
mkdir -p ~/.local/share/icons
cp ../3.Customizations/arch.png ~/.local/share/icons
echo