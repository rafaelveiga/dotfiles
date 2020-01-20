# Vim Plug

mkdir -p $HOME/.vim/autoload
cd $HOME/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
