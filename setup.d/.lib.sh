#!/usr/bin/env bash
# vi: ft=sh

export MYVIMRC="$HOME/.vimrc"
export CONF="$HOME/.config"

function disp {
    echo -e "\n $*"
}

function br {
    echo -e "\n=-=-=-=-=-=--=-=-=-=-==-\n"
}

function pkg {
    sudo apt install -y $*
}
