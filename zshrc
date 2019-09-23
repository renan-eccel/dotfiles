source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle tmux

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Fish-like autosuggestions for zsh
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme refined

# Tell Antigen that you're done.
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
# Enable vi key-binding
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/renan-eccel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# creates a key-binding for reverse-i-search (Ctrl+R)
bindkey '^R' history-incremental-search-backward

# Run .speedswapper making the swap between the Caps_Lock and the Esc keys
xmodmap ~/.speedswapper

# adds miniconda to PATH
PATH="$HOME/miniconda3/bin:$PATH"

# set EDITOR
export VISUAL=vim
export EDITOR="$VISUAL"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/renan-eccel/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/renan-eccel/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/renan-eccel/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/renan-eccel/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

