## My dotfiles

### Using:
 * zsh with ohmyzsh and vi mode
 * nvim with Vundle
 * i3
 * i3status
 * some bash config and vi mode

### Dependencies
 * zsh
 * neovim:
    - node (for coc plugin)
    - yarn (for coc plugin)
 * i3
 * i3status
 * fzf
 * exa
 * some terminal like rxvt-unicode, termite or gnome-terminal
 * some fonts:
    - ttf-caladea
    - ttf-carlito
    - ttf-dejavu
    - ttf-droid
    - ttf-font-awesome
    - ttf-liberation
    - ttf-linux-libertine
    - ttf-opensans
    - ttf-ubuntu-font-family
    - noto-fonts
    - noto-fonts-emoji
    - ttf-inconsolata
    - ttf-nerd-fonts-symbols
    - powerline-fonts

### Install:
 * Clone to your home directory
 * Get ohmyzsh and Vundle git submodules with:
    - git submodule init
    - git submodule update
    - to install nvim plugins, open nvim and run `:PluginInstall`

#### Optional Packages
 * dmenu
 * xsel

#### Optional configs:
 * Weather:
    - create the following crontab for your user:

        ```crontab
        */30 * * * * /usr/bin/curl -s 'wttr.in/-00.0000000,-00.000000?format=3' > /tmp/weather
        ```
        where -00.000000, -00.000000 is the coordenate of your city

### License
[GPL-3.0](LICENSE)
