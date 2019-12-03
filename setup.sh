#!/usr/bin/env bash

ln -s $(pwd) $HOME/.emacs.d
emacs -nw --load install_libraries.el
