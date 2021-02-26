#!/usr/bin/env zsh

CFG_HOME=`dirname ${0:A}`

print "Entering [${CFG_HOME/init}]..."
pushd $CFG_HOME/init

source 000_environment.sh
source 010_shell.sh
source 020_structure.sh
source 030_vim.sh
source 100_base16shell.sh
source 998_git-config.sh
source 999_ssh-keygen.sh

print "Returning to [${CFG_HOME}]."
popd

print "Done setting up your dotfiles!~"
