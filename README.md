## My dotfiles

![Screenshot](https://i.imgur.com/SAIP9KK.png)

## Important: I move from i3 to dwm, but the old config is on branch i3

## Branches:
* i3: my old i3configs
* main: using dwm

### Using:
 * zsh with powerlevel10k and vi mode
 * nvim with Vundle
 * suckless dwm
 * some bash config and vi mode
 * dwm-bar

### Dependencies
 * alacritty
 * zsh
 * neovim:
    - node (for coc plugin)
    - yarn (for coc plugin)
 * i3
 * i3status
 * fzf
 * exa
 * ranger
 * ueberzug for ranger image preview
 * Optional: xcompmgr (for transparency terminal)
 * Optional: feh (for set wallpaper, default wallpaper location: "~/.wallpaper.png")
 * playerctl
 * zsh-syntax-highlighting
 * zsh-autosuggestions
 * some fonts:
    - ttf-caladea
    - ttf-carlito
    - ttf-dejavu
    - ttf-droid
    - ttf-font-awesome
    - ttf-liberation
    - libertinus-font
    - ttf-opensans
    - ttf-ubuntu-font-family
    - noto-fonts
    - noto-fonts-emoji
    - ttf-inconsolata
    - ttf-nerd-fonts-symbols
    - powerline-fonts
    - terminus-font

### Install:
 * Clone to your home directory
 * Run `pip install pynvim`
 * Get ohmyzsh and Vundle git submodules with:
    - git submodule init
    - git submodule update
    - to install nvim plugins, open nvim and run `:PluginInstall`

#### Optional Packages
 * dmenu
 * xsel

#### Optional configs:
 * System-wide ctrl:nocaps:
    - create: `/etc/X11/xorg.conf.d/00-keyboard.conf` with contents:
```
Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,br"
        Option "XkbOptions" "ctrl:nocaps,grp:alt_shift_toggle"
EndSection
```

### License
[GPL-3.0](LICENSE)
