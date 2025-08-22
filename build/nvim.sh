
if [ -e $HOME/neovim ]; then
    cd $HOME/neovim/ && git pull
else
    cd $HOME && git clone https://github.com/neovim/neovim 
fi

cd $HOME/neovim &&  make CMAKE_BUILD_TYPE=Release && sudo make install
