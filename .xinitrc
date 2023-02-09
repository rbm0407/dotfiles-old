feh --bg-scale ~/.wallpaper.png &
picom &
~/.local/share/dwm-bar/dwm_bar.sh &
systemctl --user import-environment DISPLAY &
exec dwm
