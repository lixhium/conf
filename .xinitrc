xrandr --output DisplayPort-0 --mode 1366x768 &
bash ~/wm/dwm/bar.bash &
setxkbmap -layout us -variant dvorak &
nitrogen --restore &
picom -f --config ~/.config/picom/picom.conf &
while type dwm >/dev/null ; do dwm && continue || break ;done
exec dwm

