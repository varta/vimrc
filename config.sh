
if uname -s | grep -i "Cygwin"; then
    copy    $REPO/.vim      vimfiles
    copy    $REPO/.vimrc    _vimrc
    copy    $REPO/.gvimrc   _gvimrc
else
    symlink $REPO/.vim      .vim
    symlink $REPO/.vimrc    .vimrc
    symlink $REPO/.gvimrc   .gvimrc
fi

