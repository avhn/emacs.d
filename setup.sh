#!/usr/bin/env bash

cd $(dirname $0)
if [[ ! -f $HOME/.emacs.d && ! -d $HOME/.emacs.d ]]
then
    echo "Copying files"
    cp -r $(dirname $0) $HOME/.emacs.d
else
    echo "There's already a file or directory exists at $HOME/.emacs.d"
fi

if [ -f $HOME/.emacs.d/install_libraries.el ]
then
    emacs -nw --load $HOME/.emacs.d/install_libraries.el
else
    echo "No suitable .el file to install libraries"
fi

# install golang binaries
if [[ "$(which go)" != "" ]] # check path
then
    go get golang.org/x/tools/cmd/...
    go get github.com/rogpeppe/godef
    go get -u github.com/nsf/gocode # go-autocomplete binaries
fi
