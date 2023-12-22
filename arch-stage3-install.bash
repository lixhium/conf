#!/bin/bash
#
# 
# what is this?!
# this is my arch auto install, make sure to run it after configuring the partition, and make sure you are already install
# base, linux kernel, linux header, linux firmware, git and neovim!, and also set the multilib and update the pacman!!!

pacman -S  base-devel pipewire wireplumber pipewire-pulse pavucontrol xorg-server xorg-xinit xorg-xrandr xorg-xsetroot \
    xf86-video-amdgpu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon noto-fonts nerd-fonts ttf-jetbrains-mono \
    wget curl wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
    mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins \
    alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama \
    ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 \
    gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox firefox \
    neofetch htop alacritty zsh networkmanager nodejs npm xclip

systemctl enable NetworkManager

ln -sf /usr/share/zoneinfo/Asia/Kuching /etc/localtime
hwclock --systohc

echo "en_US.UTF-8" > /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "KEYMAP=dvorak" > /etc/vconsole.conf

echo "arch" > /etc/hostname

# this was suppose to be /etc/hosts conf but th ecreator dum

echo "type root password"
passwd

useradd -mG wheel adji
echo "type user password"
passwd adji

echo "%wheel ALL=(ALL:ALL) ALL" >> /etc/sudoers

echo "set the damn /etc/hosts! the creator dum!"
