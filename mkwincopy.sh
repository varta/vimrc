#!/bin/bash
dir=$(dirname $0)

echo "Copying from $dir..."

for x in "$HOME" "$USERPROFILE"; do
    echo "Entering $x..."
    cd $x
    
    echo "Removing \`vimfiles'"
    rm -rf _vim # Clean up from old scripts
    rm -rf vimfiles
    cp -fri "$dir/.vim" vimfiles
    cp -fiv "$dir/.vimrc" _vimrc
    cp -fiv "$dir/.gvimrc" _gvimrc
done

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
