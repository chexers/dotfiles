# Assume that user has no configs he gives a shit about keeping...
# Note to self: Not the healthiest of assumptions

rm     $HOME/.vimrc
rm -rf $HOME/.vim
rm -rf $LOCAL_CONF/vim

export WORKDIR=`pwd`

mkdir -p $LOCAL_CONF/vim/{bundle,autoload}
cd       $LOCAL_CONF/vim/autoload
wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

export MYVIMRC="$LOCAL_CONF/vim/config.vim"

echo "execute pathogen#infect()" >  $MYVIMRC
echo "syntax on"                 >> $MYVIMRC
echo "filetype plugin indent on" >> $MYVIMRC

cd $LOCAL_CONF/vim/bundle
git clone https://github.com/chexers/vimfiles.git personalcfg
git clone https://github.com/chriskempson/base16-vim.git
git clone https://github.com/scrooloose/nerdtree.git

ln -s $LOCAL_CONF/vim            $HOME/.vim
ln -s $LOCAL_CONF/vim/config.vim $HOME/.vimrc

cd $WORKDIR
