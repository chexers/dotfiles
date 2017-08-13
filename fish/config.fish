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

set -xg EDITOR vim
set -xg SHELL  (which fish)

set -xg PATH $HOME/.local/bin $HOME/.gem/ruby/2.4.0/bin $PATH

if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

fish_vi_mode
