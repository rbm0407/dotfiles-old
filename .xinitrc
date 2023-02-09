feh --bg-scale ~/.wallpaper.png &
picom &
~/apps/dwm-bar/dwm_bar.sh &
systemctl --user import-environment DISPLAY &
exec dwm
