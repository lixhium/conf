#!/bin/bash

mkdir ~/.config/

mv ./alacritty ~/.config/.
mv ./nvim ~/.config/.
mv ./picom ~/.config/.
mv ./wm ~/.
mv ./.xinitrc ~/.

echo "remember to compile the dwm on your own! the path to the dwm was ~/home!"
