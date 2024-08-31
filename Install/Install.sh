#!/bin/bash

mkdir -p ~/bin ~/cegep ~/projet

sudo pacman -Sy git code gcc gdb python3 python3-pip python3-venv

cp -r ~/.gitconfig/Code/User ~/home/
cp -r ~/.gitconfig/Code/User ~/.conf/

echo "Bienvenue, $(whoami)!"

alias ll="ls -la"
alias c="clear"
alias grepc="grep --color=always --color=auto --color=purple"

mkcd() {
    mkdir -p "$1" && cd "$1"
}

touchc() {
    touch "$1" && code "$1"
}

mygrep() {
    grep --color=always -1 "$1"
}

if [ "$(whoami)" = "tommyturbide" ]; then
    PS1='[\w] \$ '
else
    PS1='\u@\h \w \$ '
fi

git config --global user.name "tommy turbide"
git config --global user.email "6224021@cstjean.qc.ca"
git config --global core.editor code
git config --global user.username "Tommy-Turbide"

echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc