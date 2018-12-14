source ./antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen theme refined

# Load the theme.
antigen theme robbyrussell

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
