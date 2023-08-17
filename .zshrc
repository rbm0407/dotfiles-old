# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

# use vi mode
bindkey -v

set -o vi

#autoload -Uz compinit
#compinit

HISTFILE=~/.zsh_history
HISTSIZE=999999
SAVEHIST=999999
setopt appendhistory


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=( 
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export LC_ALL=en_US.UTF-8

DEFAULT_USER="rodrigo"

alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
alias ssh='vsh'
alias ls='exa'

# git log with graph alias
alias gitl='git log --graph --oneline --all'

# android sdk
export ANDROID_HOME=/opt/android-sdk
export ANDROID_CMDLINETOOLS=$ANDROID_HOME/cmdline-tools/latest/bin
export ANDROID_EMULATOR=$ANDROID_HOME/emulator
export ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export ANDROID_PATH=$ANDROID_CMDLINETOOLS:$ANDROID_EMULATOR:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS

# PATH definitions
export CARGO_BIN=~/.cargo/bin
export COMPOSER_BIN=~/.config/composer/vendor/bin
export HOME_BIN=~/.local/bin # Personal "bin" folder
export PATH=$PATH:$ANDROID_PATH:$CARGO_BIN:$COMPOSER_BIN:$HOME_BIN

# how to know what keys is each, use: infocmp -L -1
# how to know what commands are available, use: zle -al
#bindkey '\e[3~' delete-char #Del
#bindkey '^R' history-incremental-search-backward #Ctrl+R
#bindkey '\EOH' beginning-of-line #Home
#bindkey '\EOF' end-of-line #End
#bindkey '\E[5~' up-history #PageUp
#bindkey '\E[6~' down-history #PageDown
#bindkey '\E[2~' vi-insert #Insert
#bindkey '^P' autosuggest-accept # Shift+Tab for accept auto suggestion

# Terminal options
# force alacritty to use xterm-color
#export TERM=xterm-256color
# force i3-sensible-terminal to use alacritty
export TERMINAL=kitty

# set default editor to vim
export EDITOR=nvim

export JAVA_HOME=$(realpath /usr/bin/javadoc | sed 's@bin/javadoc$@@')

WLR_NO_HARDWARE_CURSORS=1

# source fzf for keybindings, examples:
#"^I" fzf-completion (not working for me :/)
#"^R" fzf-history-widget
#"^T" fzf-file-widget
#"^[c" fzf-cd-widget
source "/usr/share/fzf/key-bindings.zsh"

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# uncoment below if you want yo use starship
#eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
