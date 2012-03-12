#!/bin/bash
dir=$(dirname $0)

echo "Linking from $dir..."

cd ~

ln -Fisv "$dir/.vim"
ln -Fisv "$dir/.vimrc"
ln -Fisv "$dir/.gvimrc"

xwhich() {
    which $@ > /dev/null
    return $?
}

safesudo() {
    if xwhich sudo; then
        sudo $@
    elif [ $UID = 0 ]; then
        $@
    else
        echo "Error: you are not root and do not have sudo."
        echo "Please install astyle manually using \`$@'."
    fi
}

if xwhich astyle; then
    echo "astyle found, not installing it"
else
    echo "astyle not installed, attempting to install it..."
    if xwhich apt-get; then
        safesudo apt-get install astyle
    elif xwhich yum; then
        safesudo yum install astyle
    elif xwhich yast; then
        safesudo yast -i astyle
    elif xwhich pacman; then
        safesudo pacman -Syu astyle
    elif xwhich emerge; then
        safesudo emerge astyle
    elif xwhich brew; then
        # homebrew does not require root
        brew install astyle
    elif xwhich fink; then
        # fink has a safesudo-like thing built-in
        fink install astyle
    elif xwhich port; then
        # While Mac OS X comes with sudo preinstalled, better be safe than sorry
        # :)
        safesudo port install astyle
    else
        echo "I could not detect your package manager."
    fi

    if [ $? -ne 0 ]; then
        echo "Could not install package, disabling astyle." >&2
    fi
fi
