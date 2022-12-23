# Lines configured by zsh-newuser-install
ZSH_THEME=robbyrussel
HISTFILE=~/.zhistory
HISTSIZE=20
SAVEHIST=100
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/aidan/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt redhat
# End of lines added by compinstall
export PATH=$PATH:/home/aidan/.spicetify
