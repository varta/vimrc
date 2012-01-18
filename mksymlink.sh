#!/bin/bash
dir=$(dirname $0)

echo "Linking from $dir..."

cd ~

ln -Fisv "$dir/.vim"
ln -Fisv "$dir/.vimrc"
ln -Fisv "$dir/.gvimrc"
