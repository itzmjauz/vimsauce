nathan's vim config
===================


installation:

    git clone https://github.com/nathan7/vimsauce.git ~/.vim
    ln -svf .vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init && git submodule update --recursive
    git submodule foreach git submodule init && git submodule foreach git submodule update --recursive


updating:

    cd ~/.vim
    git pull
    git submodule init && git submodule update

