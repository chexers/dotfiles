# === Abbreviations
#       generic
abbr -a gs git   status
abbr -a ai apt   install -y 
abbr -a as apt   search 

#       service management
abbr -a start    sudo systemctl start
abbr -a status   sudo systemctl status
abbr -a restart  sudo systemctl restart
abbr -a stop     sudo systemctl stop

#       root-only
abbr -a gem      sudo gem
abbr -a svim     sudo vim
abbr -a iwconfig sudo iwconfig 
abbr -a ifconfig sudo ifconfig 

set -x EDITOR vim
set -x SHELL  (which fish)


if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end
