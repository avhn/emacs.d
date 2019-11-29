#!/usr/bin/env bash
emacs_dir=$HOME/.emacs.d

if [[ $(dirname $0) != emacs_dir ]]; then {
    rm -r emacs_dir
    ln -s $(dirname $0) emacs_dir
}

function setup_packages() {
    pip3 install virtualenv --user
    emacs -nw --load $(dirname $0)/install_packages.el
}

setup_packages()

exit
