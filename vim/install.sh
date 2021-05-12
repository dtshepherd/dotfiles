for src in $(find "$DOTFILES/vim/bundle" -mindepth 1 -maxdepth 1 -type d)
do
    echo "Installing vim bundle $src"
    ln -s "$src" "$DOTFILES/vim/vim.symlink/bundle/"
done

[ -z "$INTERNET_CONNECTION" ] && exit 0

VIM_VERSION=8.2
VIM_DIR="$DOTFILES/vim/vim.symlink"
VIM_SOURCE_DIR="$VIM_DIR/$VIM_VERSION"

vim --version | grep "$VIM_VERSION" > /dev/null 2>&1
if [ $? -ne 0 ]
then
    rm -rf "$VIM_SOURCE_DIR"
    rm -rf "$VIM_DIR/vim-$VIM_VERSION*"
    git clone https://github.com/vim/vim.git "$VIM_SOURCE_DIR"

    cd $VIM_DIR
    ./buildtool build "$VIM_SOURCE_DIR"
    cd -

    # leaving this commented out since it can be pretty dangerous
    #sudo tar -C / -zxf "$VIM_DIR/vim-$VIM_VERSION/vim-$VIM_VERSION"*.x86_64.tar.gz
    echo "To install the latest vim package:"
    echo "    sudo tar -C / -zxf \"$VIM_DIR/vim-$VIM_VERSION/vim-$VIM_VERSION\"*.x86_64.tar.gz"
fi
