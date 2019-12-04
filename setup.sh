#!/usr/bin/env bash

if [ $(pwd) != "$HOME/.emacs.d" ]
then
    ln -s $(pwd) $HOME/.emacs.d
fi

emacs -nw --load install_libraries.el
