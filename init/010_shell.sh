#
# Shell setup (ZSH is *awesome*)
#

export ZSH_CONF="$LOCAL_CONF/zsh/"
rm -rf $HOME/.zshrc
ln -s $ZSH_CONF/zshrc $HOME/.zshrc

chsh -s /bin/zsh
